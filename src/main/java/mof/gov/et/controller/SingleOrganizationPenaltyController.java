package mof.gov.et.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class SingleOrganizationPenaltyController {
	
	@GetMapping("/singleorg-penalty")
	public String getOrganizationPenalty() {
		return "emcp/singleorg-penalty";
	}

}

