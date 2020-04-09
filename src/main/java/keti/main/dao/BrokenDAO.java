package keti.main.dao;

import java.net.InterfaceAddress;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.influxdb.InfluxDB;
import org.influxdb.InfluxDBFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Repository;

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

}
