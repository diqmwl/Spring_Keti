package keti.main.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import keti.main.dao.BceDAO;

@Service
public class BceService {
	@Autowired
	private BceDAO bceDAO;

	public HashMap<String, Object> getBattery() {
		HashMap<String, Object> battery = new HashMap<String, Object>();
		battery.put("name", "배터리");
		battery.put("valname", "batteryval");
		battery.put("ary", bceDAO.getBattery());
		return battery;
	}

	public HashMap<String, Object> getCool() {
		HashMap<String, Object> cool = new HashMap<String, Object>();
		cool.put("name", "냉각수");
		cool.put("valname", "coolantval");
		cool.put("ary", bceDAO.getCool());
		return cool;
	}

	public HashMap<String, Object> getOil() {
		HashMap<String, Object> oil = new HashMap<String, Object>();
		oil.put("name", "엔진오일");
		oil.put("valname", "engineoilval");
		oil.put("ary", bceDAO.getOil());
		return oil;
	}
	

	
}
