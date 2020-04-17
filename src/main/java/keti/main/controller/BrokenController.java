package keti.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import keti.main.common.Pagination;
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
	public String home(Model model,@RequestParam(value="id", required = true)String id,
			@RequestParam(value = "page", required = false, defaultValue="1")int page,
			@RequestParam(value = "range", required = false, defaultValue="1")int range,
			@RequestParam(value = "listSize", required = false, defaultValue="25")int listSize) {

		Pagination pagination = new Pagination();
		pagination.setListSize(listSize);
		pagination.pageInfo(page, range, brokenService.getDetailCount(id));

		model.addAttribute("chart_data",brokenService.getAllProcess_Chart());
		model.addAttribute("pagination", pagination);
		model.addAttribute("rmc_list",brokenService.getDetailRMC(id, listSize,(pagination.getPage()-1) * listSize));
		return "broken_detail";
	}
	
	@ResponseBody
	@RequestMapping(value = "getChart")
	public List<Object> getChart(Model model) {
		return brokenService.getChart();
	}
	
}
