package keti.main.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import keti.main.model.Arrive_Car;
import keti.main.service.ArriveService;

@Controller
@RequestMapping(value = "/arrive")
public class ArriveController {

	@Autowired
	private ArriveService arriveService;
	
	@ResponseBody
	@RequestMapping(value = "/get_gps")
	public List<Object> arrive_getGPS(@RequestParam(value = "id") String id,
			@RequestParam(value = "name") String name,
			@RequestParam(value = "time") String time,
			Model model, Principal principal) {
		List<Object> gpsList = arriveService.getGPS(id, name, time);
		return gpsList;
	}
	
	@ResponseBody
	@RequestMapping(value = "/get_car")
	public List<Arrive_Car> arrive_getCAR(@RequestParam(value = "mapnumber")String mapnumber, Model model, Principal principal) {
		List<Arrive_Car> arrive = arriveService.getCAR(mapnumber);
		return arrive;
	}
	
	@ResponseBody
	@RequestMapping(value = "/get_factory")
	public List<Object> arrive_getFactory(@RequestParam(value = "mapnumber")String mapnumber, Model model, Principal principal) {
		List<Object> FactoryList = arriveService.getFactory(mapnumber);
		return FactoryList;
	}
}
