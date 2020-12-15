
package mof.gov.et.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import mof.gov.et.model.User;
import mof.gov.et.repository.MyUserRepo;

@Service
public class MyUserService {
	
	  @Autowired
	   private MyUserRepo myuserrepository;
	  
	  
	  @Autowired private BCryptPasswordEncoder encoder;
	  
	   	public List<User> ListUser(){
	    	return myuserrepository.findAll();
	    }
	    
	    public void save(User user) {
	    	user.setPassword(encoder.encode(user.getPassword()));
	    	user.setNewpassword(encoder.encode(user.getNewpassword()));
	    	myuserrepository.save(user);
	    }
	    
	    public Optional findById(Long id) {
	    	
	    	return myuserrepository.findById(id);
	    }
	     
	    public void delete(Long id) {
	    	myuserrepository.deleteById(id);
	    }

	    
		}
