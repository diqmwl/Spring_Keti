package keti.main.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import keti.main.model.Broken_Chart;
import keti.main.model.Broken_RMC;

@Repository
public class BrokenDAO {
	
	@Autowired private SqlSession sqlSession;
	private static final String Namespace = "keti.main.mapper.rmcMapper";
	
	public BrokenDAO() {
	
	}
	
	public int getCount() {
		//RMC 한건 가져오기
		return sqlSession.selectOne(Namespace+".getCount");
	}
	
	public int getDetailCount(String id) {
		//Detail RMC 가져오기
		return sqlSession.selectOne(Namespace+".getDetailCount", id);
	}
	
	public List<Broken_RMC> getRMC(int listSize, int offset) {
		Map<String, Integer> param = new HashMap<>();
		param.put("listSize", listSize);
		param.put("offset", offset);
		return sqlSession.selectList(Namespace+".selectRMC", param);
	}
	
	public List<Object> getCar(String data) {
		return sqlSession.selectList(Namespace+".getCar", data);
	}

	public List<Object> getChart() {
		List<Object> listdata = new ArrayList<Object>();
		List<Broken_Chart> charts = sqlSession.selectList(Namespace+".getChart");
		String[] temp = {"date", "count"};
		listdata.add(temp);
		if (charts != null) { 
		   for (int i=charts.size()-1; i>=0; i--){
			   List<Object> temp2 = new ArrayList<Object>();
			   temp2.add(charts.get(i).getDate());
			   temp2.add(charts.get(i).getCount());
		    listdata.add(temp2);
		   } 
		} 
		return listdata;
	}
	
	public List<Broken_Chart> getProcess_Chart() {
		List<Broken_Chart> list = sqlSession.selectList(Namespace+".getChart");
		return sqlSession.selectList(Namespace+".getChart");
	}

	public List<Broken_Chart> getProcess_LastChart() {
		return sqlSession.selectList(Namespace+".getLastChart");
	}

	public List<Broken_RMC> getDetailRMC(String id, int listSize, int offset) {
		Map<String, Object> param = new HashMap<>();
		param.put("car_id", id);
		param.put("listSize", listSize);
		param.put("offset", offset);
		return sqlSession.selectList(Namespace+".selectDetailRMC", param);
	}

	public String insertRMC(String time, String car_id, String comments) {
		Map<String, Object> param = new HashMap<>();
		param.put("time", time);
		param.put("car_id", car_id);
		param.put("comments", comments);
		String result = "";
		int check = 0;
		
		if(sqlSession.selectList(Namespace+".selectAlter", param).size() == 0) {
			try {
				param.put("status", 1);
				check = sqlSession.insert(Namespace+".insertAlter", param);
				if(check == 1) {
					result = "success";
				}
			} catch (Exception e) {
				result = "이미 대기중이거나 수리중인 차량입니다.";
			}
		}else {
			result = "이미 대기중이거나 수리중인 차량입니다.";
		}
		return result;
	}
	
	public String deleteRMC(String time, String car_id) {
		Map<String, Object> param = new HashMap<>();
		param.put("time", time);
		param.put("car_id", car_id);
		String result = "";
		int check = 0;
		
		try {
			check = sqlSession.insert(Namespace+".deleteAlter", param);
			if(check == 0)
				result = "이미 초기화되어 있습니다.";
			else 
				result = "success";
		} catch (Exception e) {
			result = "에러발생";
		}
		
		return result;
	}
	
	public String completeRMC(String time, String car_id) {
		Map<String, Object> param = new HashMap<>();
		param.put("time", time);
		param.put("car_id", car_id);
		String result = "";
		int check = 0;
		
		try {
			param.put("status", 3);
			check = sqlSession.insert(Namespace+".completeAlter", param);
			if(check == 1)
				result = "success";
			else 
				result = "완료처리 할 수 없습니다";
		} catch (Exception e) {
			result = "에러발생";
		}
		
		return result;	
		}
}
