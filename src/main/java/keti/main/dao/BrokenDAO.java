package keti.main.dao;

import java.sql.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.influxdb.InfluxDB;
import org.influxdb.InfluxDBFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import keti.main.model.Broken_Chart;
import keti.main.model.Broken_RMC;

@Repository
public class BrokenDAO {
	InfluxDB influxDB;
	
	@Autowired private SqlSession sqlSession;
	private static final String Namespace = "keti.main.mapper.rmcMapper";
	
	public BrokenDAO() {
		influxDB = InfluxDBFactory.connect("http://125.140.110.217:8999" , "tinyos", "tinyos");
	}
	
	public int getCount() {
		//RMC 한건 가져오기
		return sqlSession.selectOne(Namespace+".getCount");
	}
	
	public List<Broken_RMC> getRMC(int listSize, int offset) {
		Map<String, Integer> param = new HashMap<>();
		param.put("listSize", listSize);
		param.put("offset", offset);
		return sqlSession.selectList(Namespace+".selectRMC", param);
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
		return sqlSession.selectList(Namespace+".getChart");
	}

	public List<Broken_Chart> getProcess_LastChart() {
		return sqlSession.selectList(Namespace+".getLastChart");
	}
}
