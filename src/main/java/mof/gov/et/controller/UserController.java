package mof.gov.et.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mof.gov.et.model.User;
import mof.gov.et.service.MyUserService;


@Controller

public class UserController {

     @Autowired
	private MyUserService myuserservice;
	
	@GetMapping("/user-register")
	public String  userlists(Model model) {
		List<User> user = myuserservice.ListUser();
        model.addAttribute("list",user);
		return "emcp/user-register";
	}
	
	@PostMapping("/userlists/addNew")
	public String addNew( User user) {
		myuserservice.save(user);
		return "redirect:/user-register";
	}
	
	@RequestMapping("user/findById")
	@ResponseBody
	public Optional<User> findById(Long id) {
	  return myuserservice.findById(id);	
	}
	
	@RequestMapping(value="/user/update", method= {RequestMethod.PUT, RequestMethod.GET})
	public String update(User  user) {
		myuserservice.save(user);
		return "redirect:/user-register";
	
		
	}
	
	@RequestMapping(value="/user/delete", method= {RequestMethod.DELETE, RequestMethod.GET})
	public String delete(Long id) {
		myuserservice.delete(id);
		return "redirect:/user-register";
	}
	


/*
	@GetMapping("/uploadto-account")
	public String getAccount() {
		return "user/account";
	}
	*/
	
	@GetMapping("/uploadto-audit")
	public String getAudit() {
		return "user/audit";
	}
	@GetMapping("/uploadto-budget")
	public String getBudget() {
		return "user/budget";
	}
	
	@GetMapping("/uploadto-cash")
	public String getCash() {
		return "user/cash";
	}
	@GetMapping("/uploadto-inspection")
	public String getInspection() {
		return "user/inspection";
	}
	
	@GetMapping("/uploadto-property")
	public String getProperty() {
		return "user/property";
	}
}

