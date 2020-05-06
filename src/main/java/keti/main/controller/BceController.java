package keti.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BceController {
	
	@GetMapping(value = "/bceSVC")
	public String habitSVC() {	
		return "bcemanage";
	}
}
