package mof.gov.et.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import mof.gov.et.model.Course;
import mof.gov.et.service.CourseService;

@Controller
public class CourseController {

	@Autowired
	private CourseService courseService;
	@GetMapping("/courses")
	public String AllCourse(Model model) {
		List<Course> allCourse=courseService.getAllCourse();
		model.addAttribute("courses",allCourse);
		return "emcp/course";
	}
}
