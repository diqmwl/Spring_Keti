package keti.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import keti.main.common.Pagination;
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
	public String brokenSVC(Model model, @RequestParam(value = "page", required = false, defaultValue="1")int page,
			@RequestParam(value = "range", required = false, defaultValue="1")int range,
			@RequestParam(value = "listSize", required = false, defaultValue="25")int listSize) {
		Pagination pagination = new Pagination();
		pagination.setListSize(listSize);
		pagination.pageInfo(page, range, brokenService.getCount());

		model.addAttribute("chart_data",brokenService.getAllProcess_Chart());
		model.addAttribute("pagination", pagination);
		model.addAttribute("rmc_list",brokenService.getRMC(listSize,(pagination.getPage()-1) * listSize));
		return "brokenmanage";
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
