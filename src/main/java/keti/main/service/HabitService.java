package keti.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import keti.main.dao.HabitDAO;
import keti.main.model.Habit_Rank;

@Service
public class HabitService {
	@Autowired
	private HabitDAO habitDAO;
	
	public List<Habit_Rank> getRank() {
		// TODO Auto-generated method stub
		return habitDAO.getRank();
	}
	
}
