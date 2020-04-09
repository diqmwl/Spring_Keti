package keti.main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import keti.main.dao.BrokenDAO;
import keti.main.model.Broken_RMC;

@Service
public class BrokenService {

	@Autowired
	private BrokenDAO brokenDAO;

	public List<Broken_RMC> getRMC(int listSize, int offset) {
		// TODO Auto-generated method stub
		return brokenDAO.getRMC(listSize, offset);
	}

	public int getCount() {
		return brokenDAO.getCount();		
	}

}
