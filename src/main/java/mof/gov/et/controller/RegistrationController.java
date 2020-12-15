/*

package mof.gov.et.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


import mof.gov.et.model.User;
import mof.gov.et.service.MyUserDetails;


@Controller
public class RegistrationController {
	
   
    @GetMapping("/user-register")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "emcp/user-register";
    }

    @PostMapping("/user-register")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult)
    {
        

        if (bindingResult.hasErrors()) {
            return "emcp/user-register";
        }

       

       
        return "redirect:/emcp/user-register";
    }
}



*/
