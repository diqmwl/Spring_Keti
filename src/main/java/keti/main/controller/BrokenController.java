package keti.main.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import keti.main.model.Broken_Chart;
import keti.main.service.BrokenService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/brokenSVC")
public class BrokenController {
	@Autowired
	private BrokenService brokenService;
	
	@GetMapping(value = "detail")
	public String home(Model model) {
		return "broken_detail";
	}
	
	@ResponseBody
	@RequestMapping(value = "getChart")
	public List<Object> getChart(Model model) {
		return brokenService.getChart();
	}
	
}
