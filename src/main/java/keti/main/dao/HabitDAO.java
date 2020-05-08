package keti.main.dao;

import java.util.Collections;
import java.util.List;

import org.influxdb.InfluxDB;
import org.influxdb.InfluxDBFactory;
import org.influxdb.dto.Query;
import org.influxdb.dto.QueryResult;
import org.influxdb.impl.InfluxDBResultMapper;
import org.springframework.stereotype.Repository;

import keti.main.model.Habit_Rank;

@Repository
public class HabitDAO {
	InfluxDB influxDB;

	public HabitDAO() {
		influxDB = InfluxDBFactory.connect("http://125.140.110.217:8999" , "tinyos", "tinyos");
	}

	public List<Habit_Rank> getRank() {
		QueryResult queryResult = influxDB.query(new Query("select * from DANGER_RANK_202002", "SAMPYO_MONIT"));
		InfluxDBResultMapper resultMapper = new InfluxDBResultMapper();
		List<Habit_Rank> rank_list = resultMapper.toPOJO(queryResult, Habit_Rank.class);		
		Collections.sort(rank_list);
		
		System.out.println("사이즈 = "+ rank_list.size());
		for(int i = 0; i < rank_list.size(); i++) {
			System.out.println(rank_list.get(i).getRank());
		}
		influxDB.close();
		return rank_list;
	}
}
