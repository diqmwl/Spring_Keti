package keti.main.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import org.influxdb.InfluxDB;
import org.influxdb.InfluxDBFactory;
import org.influxdb.dto.Query;
import org.influxdb.dto.QueryResult;
import org.influxdb.impl.InfluxDBResultMapper;
import org.springframework.stereotype.Repository;

import com.sun.xml.internal.ws.policy.privateutil.PolicyUtils.Collections;

import keti.main.model.Broken_FMI;
import keti.main.model.Broken_RMC;
import keti.main.model.Broken_SPN;

@Repository
public class BrokenDAO {
	InfluxDB influxDB;
	
	public BrokenDAO() {
		influxDB = InfluxDBFactory.connect("http://125.140.110.217:8999" , "tinyos", "tinyos");
	}

	public Map<String, Object> getRMC() {
		// TODO Auto-generated method stub
		Map<String, Object> rmcMap = new HashMap<String, Object>();
		QueryResult queryResult = influxDB.query(new Query("select * from MAIN_RMC group by car_id order by desc limit 1", "DTC_MONIT"));
		InfluxDBResultMapper resultMapper = new InfluxDBResultMapper();
		//RMC 리스트 만들기
		List<Broken_RMC> rmc_list = resultMapper.toPOJO(queryResult, Broken_RMC.class);
		
		//시간 측정
		long start = System.currentTimeMillis(); //시작하는 시점 계산
		transeCODE(regex(rmc_list), rmcMap);
		long end = System.currentTimeMillis(); //프로그램이 끝나는 시점 계산
		System.out.println( "실행 시간 : " + ( end - start )/1000.0 +"초");
		
		rmcMap.put("rmc_list", rmc_list);
		return rmcMap;

	}
	
	private void transeCODE(List<String> str_list, Map<String, Object> rmcmap) {
		QueryResult queryResult = influxDB.query(new Query("select * from FMI_CODE where code ="+str_list.get(0), "DTC_MONIT"));
		InfluxDBResultMapper resultMapper = new InfluxDBResultMapper();
		List<Broken_FMI> fmi_list = resultMapper.toPOJO(queryResult, Broken_FMI.class);
		
		
		queryResult = influxDB.query(new Query("select * from SPN_CODE where code ="+str_list.get(1), "DTC_MONIT"));
		List<Broken_SPN> spn_list = resultMapper.toPOJO(queryResult, Broken_SPN.class);

		
//		rmcmap.put("FMI_LIST", fmi_list);
//		rmcmap.put("SPN_LIST", spn_list);
		influxDB.close();
	}
	
	private List<String> regex(List<Broken_RMC> list) {
		Set<Integer> fmi_set = new TreeSet<Integer>();
		Set<Integer> spn_set = new TreeSet<Integer>();
		String fmi = "~ /";
		String spn = "~ /";
		for (Broken_RMC broken_RMC : list) {
			fmi_set.add(broken_RMC.getFMI());
			spn_set.add(broken_RMC.getSPN());
		}

		int index = 0;
		for (Integer integer : fmi_set) {
			fmi += "^" + integer + "$";
			if(index++ != spn_set.size()-1) fmi += "|";
		}

		index = 0;
		for (Integer integer : spn_set) {
			spn += "^" + integer + "$";
			if(index++ != spn_set.size()-1) spn += "|";
		}
		
		
//		for (Broken_RMC broken_RMC : list) {
//			fmi += "^" + broken_RMC.getFMI() + "$|";
//			spn += "^" + broken_RMC.getSPN() + "$|";
//		}
		fmi += "/";
		spn += "/";
		System.out.println(spn);
		List<String> dtc_list = new ArrayList<String>();
		dtc_list.add(fmi);
		dtc_list.add(spn);
		return dtc_list;
	}
}
