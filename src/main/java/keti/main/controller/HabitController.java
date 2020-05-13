package keti.main.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import keti.main.common.Pagination;
import keti.main.model.Habit_Rank;
import keti.main.service.HabitService;

@Controller
@RequestMapping(value = "/habitSVC")
public class HabitController {
	@Autowired
	private HabitService habitService;
	
	@GetMapping(value = "")
	public String habitSVC(Model model,
			@RequestParam(value = "page", required = false, defaultValue="1")int page,
			@RequestParam(value = "range", required = false, defaultValue="1")int range,
			@RequestParam(value = "listSize", required = false, defaultValue="25")int listSize) {
		
		int total_count = (int) habitService.getCount();
		Pagination pagination = new Pagination();
		pagination.setListSize(listSize);
		pagination.pageInfo(page, range, total_count);
		
		List<Habit_Rank> rank_list = habitService.getRank(listSize,(page-1) * listSize);
		List<Habit_Rank> top_list = new ArrayList<Habit_Rank>();
		for(int i = 0; i < 3; i++) {
			top_list.add(rank_list.get(i));
		}
		model.addAttribute("pagination", pagination);
		model.addAttribute("top_list", top_list);
		model.addAttribute("total_count", total_count);
		model.addAttribute("rank_list", rank_list);
		return "habit";
	}
	
}
