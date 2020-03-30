package keti.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import keti.main.dao.ArriveDAO;
import keti.main.dao.BrokenDAO;
import keti.main.model.Arrive_Car;
import keti.main.model.Arrive_Factory;

@Service
public class BrokenService {

	@Autowired
	private BrokenDAO brokenDAO;

	public List<Object> getRMC() {
		// TODO Auto-generated method stub
		brokenDAO.getRMC();
		return null;
	}
}
