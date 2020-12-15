

package mof.gov.et.controller;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mof.gov.et.model.Organization;
import mof.gov.et.service.OrganizationServiceImpl;



@Controller

public class OrganizationController {
	
	
	 @Autowired
	private OrganizationServiceImpl  organizationService;
	 
	

		@RequestMapping("/organizationreg")
		public ModelAndView get() {
			ModelAndView mav = new ModelAndView("emcp/organization-register");
			List<Organization> list = organizationService.getAllOrganization();
			mav.addObject("list", list);
			return mav;
		}
		@RequestMapping("/newOrganization")
		public ModelAndView openOrganizationAddView() {
			ModelAndView mav = new ModelAndView("emcp/organization-register");
			mav.addObject("organization", new Organization());
			return mav;
		}
		
		@RequestMapping("/saveOrganization")
		public ModelAndView save(@ModelAttribute("organization") Organization organizationObj) {
			ModelAndView mav = new ModelAndView("emcp/organization-register");
			organizationService.save(organizationObj);
			List<Organization> list = organizationService.getAllOrganization();
			mav.addObject("list", list);
			return mav;
		}
		
		@RequestMapping("/editOrganizaiton")
		public ModelAndView get(@PathVariable("id") int id) {
			ModelAndView mav = new ModelAndView("emcp/organization-register");
			Optional<Organization> organizationObj = organizationService.findById(id);
			if(organizationObj == null) {
				throw new RuntimeException("Organnization not found"+id);
			}
			mav.addObject("organziation", organizationObj);
			return mav;

		}
		

		@RequestMapping("/deleteOrganization/{id}")
		public ModelAndView delete(@PathVariable("id") int id) {
			ModelAndView mav = new ModelAndView("emcp/organization-register");
			organizationService.delete(id);
			List<Organization> list = organizationService.getAllOrganization();
			mav.addObject("list", list);
			return mav;
		}

}



  


