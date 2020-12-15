package mof.gov.et.controller;


import java.util.stream.Collectors;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import mof.gov.et.model.ChangePassword;
import mof.gov.et.model.User;


@Controller
public class ChangePasswordController {
	
	
	@GetMapping("/changepassword")
	public String getEditUserForm() {
		
		return "changepassword";
		}
}
/*	
	@GetMapping("/editUser/{id}")
	public String getEditUserForm(Model model, @PathVariable(name="id") Long id) {
		
		model.addAttribute("passwordForm",new ChangePassword(id));
		return "changepassword";
		}
	

		@PostMapping("/editUser")
		public String postEditUserForm(@Valid @ModelAttribute("userForm")User user, BindingResult result, ModelMap model) {
				try {
		                  
				} catch (Exception e) {
		                 
		          model.addAttribute("passwordForm",new ChangePassword(user.getId()));
		                   
				} 
	
	return "changepassword";
		
		
		
		
		
		
		}
		}
	
	*/