package mof.gov.et.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class PrivillegeController {
	
	@GetMapping("/userprivilleges")
	public String getOrganizationPenalty() {
		return "privillege";
	}

}

