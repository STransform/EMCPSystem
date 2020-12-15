package mof.gov.et.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class RoleController {
	
	@GetMapping("/rolereg")
	public String getOrganizationPenalty() {
		return "emcp/role";
	}

}

