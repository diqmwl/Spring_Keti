package keti.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class IndexController {


	@GetMapping()
	public String index() {
		return "index";
	}
	
	@GetMapping(value = "/arrSVC")
	public String arrSVC() {
		return "arrival";
	}
	
	@GetMapping(value = "/brokenSVC")
	public String brokenSVC() {
		return "brokenmanage";
	}
	
	@GetMapping(value = "/habitSVC")
	public String habitSVC() {	
		return "habit";
	}
}
