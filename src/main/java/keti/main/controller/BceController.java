package keti.main.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import keti.main.service.BceService;

@Controller
public class BceController {
	@Autowired
	private BceService bceService;
	@GetMapping(value = "/bceSVC")
	public String habitSVC(Model model) {
		List<Object> vehicle_info = new ArrayList<Object>();
		vehicle_info.add(bceService.getBattery());
		vehicle_info.add(bceService.getCool());
		vehicle_info.add(bceService.getOil());

		model.addAttribute("vehicle_info", vehicle_info);
		return "bcemanage";
	}
}
