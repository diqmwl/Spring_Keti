package keti.main.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import keti.main.dao.BrokenDAO;

@Service
public class BrokenService {

	@Autowired
	private BrokenDAO brokenDAO;

	public Map<String, Object> getRMC() {
		// TODO Auto-generated method stub
		return brokenDAO.getRMC();
	}
}
