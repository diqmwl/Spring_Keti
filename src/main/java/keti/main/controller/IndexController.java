package keti.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import keti.main.service.BrokenService;


@Controller
public class IndexController {
	@Autowired
	private BrokenService brokenService;

	@GetMapping()
	public String index() {
		return "index";
	}
	
	@GetMapping(value = "/arrSVC")
	public String arrSVC() {
		return "arrival";
	}
	
	@GetMapping(value = "/brokenSVC")
	public String brokenSVC(Model model) {
		model.addAttribute("rmcMap",brokenService.getRMC());
		return "brokenmanage";
	}
	
	@GetMapping(value = "/habitSVC")
	public String habitSVC() {	
		return "habit";
	}
	
	@GetMapping(value="/manage")
	public String manageSVC() {
		return "management";
	}
	
	@GetMapping(value="/index2")
	public String index2() {
		return "index2";
	}
}
