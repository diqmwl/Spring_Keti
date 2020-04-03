package keti.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SecurityController {

	@ResponseBody
	@RequestMapping(value = "/security")
	public String securitycheck(HttpServletRequest request) {
		if(request.isUserInRole("ROLE_USER")) {
			return "ROLE_USER";
		}else {
			return "deny";
		}
	}
}
