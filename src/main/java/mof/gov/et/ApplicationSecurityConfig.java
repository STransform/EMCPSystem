

package mof.gov.et;




import java.util.List;

import javax.servlet.MultipartConfigElement;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


import mof.gov.et.service.UserDetailsServiceImpl;



@EnableWebSecurity
@Configuration
public class ApplicationSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.
		csrf().disable()
		.authorizeRequests()
		
		.antMatchers("/").hasAnyAuthority( "EMCP","ADMIN","USER","AUDIT","BUDGET","CASH","PROPERTY","INSPECTION","ACCOUNT")
		
		.antMatchers("/welcome").hasAnyAuthority("ADMIN")
		
		.antMatchers("/organizationreg").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/newOrganization").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/saveOrganization").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/deleteOrganization").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/editOrganization").hasAnyAuthority("ADMIN","EMCP") 
		
		.antMatchers("/directorlist").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/directorform").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/directorsave").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/saveDirectorate").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/delete/{id}").hasAnyAuthority("ADMIN","EMCP")
		
		.antMatchers("/documentreg").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/traineereg").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/user-register").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/changepassword").hasAnyAuthority("ADMIN","EMCP")
		
		.antMatchers("/rolereg").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/reportfrom-org").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/organizationpenalty").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/singleorg-penalty").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/directorate-report").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/file").hasAnyAuthority("ADMIN","EMCP")
		.antMatchers("/uploadFile").hasAnyAuthority("USER","EMCP")
		.antMatchers("/uploadBudgetFiles").hasAnyAuthority("USER")
		
		
		
		.antMatchers("/director-audit").hasAnyAuthority("AUDIT") 
		

		.antMatchers("/changepassword").hasAnyAuthority("USER")
		.antMatchers("/fileupload").hasAnyAuthority("USER")
		.antMatchers("/doUpload").hasAnyAuthority("USER")
		.antMatchers("/downloadFile/").hasAnyAuthority("USER")
		.antMatchers("/uploadto-cash").hasAnyAuthority("USER")
		.antMatchers("/uploadto-inspection").hasAnyAuthority("USER")
		.antMatchers("/uploadto-property").hasAnyAuthority("USER")
		.anyRequest().authenticated()
		.and()
		.formLogin().permitAll()
		.and()
		.authorizeRequests()
		.anyRequest()
		.authenticated()
		.and()
		.formLogin()
		.loginPage("/login")
		.and()
		.logout().permitAll()
		.and()
		.exceptionHandling().accessDeniedPage("/403")
		;
	}
	

	
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return NoOpPasswordEncoder.getInstance();
	}
	
	
	
	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public UserDetailsService userDetailsService() {
		return new UserDetailsServiceImpl();
	}
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	
	
	@Bean
	public AuthenticationProvider authenticationProvider() {
		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
		
		provider.setUserDetailsService(userDetailsService);
		
		provider.setPasswordEncoder(bCryptPasswordEncoder());
	
		
		
		return provider;
	}
	
	
	
	
	}
	
	
