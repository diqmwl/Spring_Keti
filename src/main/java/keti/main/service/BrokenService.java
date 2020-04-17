package keti.main.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import keti.main.dao.BrokenDAO;
import keti.main.model.Broken_Chart;
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

	public List<Object> getChart() {
		// TODO Auto-generated method stub
		return brokenDAO.getChart();
	}
	
	public HashMap<String, HashMap<String, Float>> getAllProcess_Chart() {
		HashMap<String, HashMap<String, Float>> process_data = new HashMap<String, HashMap<String, Float>>();
		List<Broken_Chart> now = brokenDAO.getProcess_Chart();
		List<Broken_Chart> last = brokenDAO.getProcess_LastChart();
		process_data.put("now_data", process(now));
		process_data.put("rate_data", rate(process(now), process(last)));
		
		return process_data;
	}
	
	
	public HashMap<String, Float> rate(HashMap<String, Float> now, HashMap<String, Float> last){
		HashMap<String, Float> hashMap = new HashMap<String, Float>();
		float max_rate = (now.get("max") - last.get("max")) / last.get("max") * 100;
		float min_rate = (now.get("min") - last.get("min")) / last.get("min") * 100;
		float avg_rate = (now.get("avg") - last.get("avg")) / last.get("avg") * 100;
		float sum_rate = (now.get("sum") - last.get("sum")) / last.get("sum") * 100;
		
		hashMap.put("max", max_rate);
		hashMap.put("min", min_rate);
		hashMap.put("avg", avg_rate);
		hashMap.put("sum", sum_rate);
		
		return hashMap;
	}
	
	public HashMap<String, Float> process(List<Broken_Chart> temp) {
		HashMap<String, Float> hashMap = new HashMap<String, Float>();
		max_value(temp, hashMap);
		min_value(temp, hashMap);
		avg_sum(temp, 1, hashMap);
		avg_sum(temp, 0, hashMap);
		
		return hashMap;
	}
	
	public void max_value(List<Broken_Chart> temp, HashMap<String, Float> hash) {
		float max = 0;
		
		for(int i = 0; i < temp.size(); i++) {
			if(i != 0) {
				max = Math.max(max, temp.get(i).getCount());
			}
		}
		hash.put("max", max);		
	}
	
	public void min_value(List<Broken_Chart> temp, HashMap<String, Float> hash) {
		float min = 9999;
		
		for(int i = 0; i < temp.size(); i++) {
			if(i != 0) {
				min = Math.min(min, temp.get(i).getCount());
			}
		}
		hash.put("min", min);		
	}
	
	public void avg_sum(List<Broken_Chart> temp, int flag, HashMap<String, Float> hash) {
		float avg = 0;
		
		for(int i = 0; i < temp.size(); i++) {
			if(i != 0) {
				avg += temp.get(i).getCount();
			}
		}
		
		if(flag == 1) hash.put("avg", avg/ (temp.size()-1));
		else hash.put("sum", avg);		
	}
	
}
