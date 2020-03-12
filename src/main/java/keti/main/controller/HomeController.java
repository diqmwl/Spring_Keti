package keti.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		return "index";
	}
	
	
	@RequestMapping(value = "/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "timeout", required = false) String timeout,
			@RequestParam(value = "expired", required = false) String expired, Model model) {
		
		if(error != null) {
			model.addAttribute("errMsg", "check your username and password");
		}
		if(timeout != null) {
			model.addAttribute("timeout", "1");
		}
		if(expired != null) {
			model.addAttribute("expired", "1");
		}
		
		return "login";
	}
	
}
