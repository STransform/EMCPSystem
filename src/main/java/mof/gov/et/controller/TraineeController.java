package mof.gov.et.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class TraineeController {
	@GetMapping("/traineereg")
	  
	  public String getDirectorates() {

		  return "emcp/trainee-register";
}
	
}
