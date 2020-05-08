package keti.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import keti.main.service.HabitService;

@Controller
@RequestMapping(value = "/habitSVC")
public class HabitController {
	@Autowired
	private HabitService habitService;
	
	@GetMapping(value = "")
	public String habitSVC() {
		habitService.getRank();
		return "habit";
	}
	
}
