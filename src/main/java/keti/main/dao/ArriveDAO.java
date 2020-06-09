package keti.main.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import org.influxdb.InfluxDB;
import org.influxdb.InfluxDBFactory;
import org.influxdb.dto.Query;
import org.influxdb.dto.QueryResult;
import org.influxdb.impl.InfluxDBResultMapper;
import org.springframework.stereotype.Repository;

import keti.main.model.Arrive_Car;
import keti.main.model.Arrive_Factory;
import keti.main.model.Arrive_Visit;
import keti.main.model.Arrive_main;

@Repository
public class ArriveDAO {
	InfluxDB influxDB;
	
	public ArriveDAO() {
		System.out.println("생성자케케");
		influxDB = InfluxDBFactory.connect("http://125.140.110.217:8999" , "tinyos", "tinyos");
	}

	public List<Object> getGPS(String id, String name, String time) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date;
		Calendar cal = Calendar.getInstance();
		try {
			date = format.parse(time);
			cal.setTime(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		cal.add(Calendar.HOUR, -9);
		String end_time = time.split(" ")[0];
		
		List<Object> gpsList = new ArrayList<Object>();
		QueryResult queryResult = influxDB.query(new Query("select * from VISIT_RULE WHERE car_id = '"+id+"' AND time <= '"+end_time+" 14:59:59' AND time >= '"+format.format(cal.getTime())+"' order by desc", "SAMPYO_MONIT"));
		InfluxDBResultMapper resultMapper = new InfluxDBResultMapper();
		List<Arrive_Visit> List = resultMapper.toPOJO(queryResult, Arrive_Visit.class);
		
		if(List.size() == 0) {
			return gpsList;
		}
		else {
			queryResult = influxDB.query(new Query("select GPS_LAT, GPS_LONG, car_id from MAIN2 where car_id = '"+id+"' AND time <= '"+List.get(0).getVISIT_END()+"' AND time >= '"+List.get(List.size()-1).getVISIT_START()+"' order by desc", "SAMPYO_MONIT"));
			List<Arrive_main> List2 = resultMapper.toPOJO(queryResult, Arrive_main.class);
			gpsList.add(List);
			gpsList.add(List2);
			
			influxDB.close();
			return gpsList;
		}
	}

	public List<Arrive_Car> getCAR(String mapnum) {
		QueryResult queryResult = influxDB.query(new Query("select DISTINCT(CAR_ID) AS CAR_ID from DEPARTUREARRIVAL WHERE LOC_NUM = "+mapnum, "SAMPYO_MONIT"));
		InfluxDBResultMapper resultMapper = new InfluxDBResultMapper();
		List<Arrive_Car> carList = resultMapper.toPOJO(queryResult, Arrive_Car.class);		
		
		influxDB.close();
		return carList;
	}
	
	public List<Object> getFactory(String mapnum) {
		List<Object> FactoryList = new ArrayList<Object>();
		
		QueryResult queryResult = influxDB.query(new Query("select * from (select * from DEPARTUREARRIVAL group by car_id order by time desc limit 1) where BASE_NUM = "+Integer.parseInt(mapnum)+" and LOC_NUM = 0 group by car_id order by time desc", "SAMPYO_MONIT"));
		InfluxDBResultMapper resultMapper = new InfluxDBResultMapper();
		List<Arrive_Factory> outList = resultMapper.toPOJO(queryResult, Arrive_Factory.class);		
				
		queryResult = influxDB.query(new Query("select * from (select * from DEPARTUREARRIVAL group by car_id order by time desc limit 1) where BASE_NUM = "+Integer.parseInt(mapnum)+" and LOC_NUM = "+Integer.parseInt(mapnum)+" group by car_id order by time desc", "SAMPYO_MONIT"));
		resultMapper = new InfluxDBResultMapper();
		List<Arrive_Factory> inList = resultMapper.toPOJO(queryResult, Arrive_Factory.class);		
	
		Collections.sort(outList);
		Collections.sort(inList);
		
		FactoryList.add(outList);
		FactoryList.add(inList);

		influxDB.close();
		return FactoryList;
	}
}
