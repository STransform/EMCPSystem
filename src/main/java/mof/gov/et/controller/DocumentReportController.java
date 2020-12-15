package mof.gov.et.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class DocumentReportController {
	
	@GetMapping("/document-report")
	public String getOrganizationPenalty() {
		return "emcp/document-report";
	}

}

