package mof.gov.et.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class DirectorateReportController {
	
	@GetMapping("/uploadAuditFiles")
	public String getOrganizationPenalty() {
		return "director/director-audit";
	}

}

