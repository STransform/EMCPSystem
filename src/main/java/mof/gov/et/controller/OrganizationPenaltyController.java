package mof.gov.et.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class OrganizationPenaltyController {
	
	@GetMapping("/organizationpenalty")
	public String getOrganizationPenalty() {
		return "emcp/organization-penalty";
	}

}

