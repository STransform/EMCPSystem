

package mof.gov.et.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mof.gov.et.model.Directorate;
import mof.gov.et.service.DirectorateServiceImpl;



@Controller
public class DirectorateController {
	
	@Autowired

	private DirectorateServiceImpl directorateService;

	
	@GetMapping("/director-audit")
	  
	  public String getDirectorAudit() {

		  return "director/director-audit";
}
	
	
	@RequestMapping("/directorlist")
	public ModelAndView get() {
		ModelAndView mav = new ModelAndView("emcp/director-register");
		List<Directorate> list = directorateService.getAllDirectorate();
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping("/directorform")
	public ModelAndView openDirectorateAddView() {
		ModelAndView mav = new ModelAndView("emcp/director-register");
		mav.addObject("directorate", new Directorate());
		return mav;
	}
	//to save directorate
	@RequestMapping("/directorsave")
	public ModelAndView save(@ModelAttribute("directorate") Directorate directorateObj) {
		ModelAndView mav = new ModelAndView("emcp/director-register");
		directorateService.save(directorateObj);
		List<Directorate> list = directorateService.getAllDirectorate();
		mav.addObject("list", list);
		return mav;
	}
	
	
	
	
	@RequestMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView("emcp/director-register");
		directorateService.delete(id);
		List<Directorate> list = directorateService.getAllDirectorate();
		mav.addObject("list", list);
		return mav;
	}
	
}


