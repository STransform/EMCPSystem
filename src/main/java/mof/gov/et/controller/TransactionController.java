package mof.gov.et.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class TransactionController {
	
	@GetMapping("/reportfrom-org")
	public String getOrganizationPenalty() {
		return "emcp/transaction";
	}

}
	
	
	



