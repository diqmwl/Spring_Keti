package keti.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import keti.main.service.ArriveService;
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
	public String brokenSVC() {
		List<Object> BrokenList = brokenService.getRMC();
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
