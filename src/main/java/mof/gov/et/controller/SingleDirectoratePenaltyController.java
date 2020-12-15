package mof.gov.et.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class SingleDirectoratePenaltyController {
	
	@GetMapping("/singledirector-penalty")
	public String getOrganizationPenalty() {
		return "emcp/singledirector-penalty";
	}

}

