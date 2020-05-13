package keti.main.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.influxdb.InfluxDB;
import org.influxdb.InfluxDBFactory;
import org.influxdb.dto.Query;
import org.influxdb.dto.QueryResult;
import org.influxdb.dto.QueryResult.Result;
import org.influxdb.impl.InfluxDBResultMapper;
import org.json.simple.JSONArray;
import org.springframework.stereotype.Repository;

import com.google.gson.JsonObject;

import keti.main.model.Habit_Count;
import keti.main.model.Habit_Rank;

@Repository
public class HabitDAO {
	InfluxDB influxDB;

	public HabitDAO() {
		influxDB = InfluxDBFactory.connect("http://125.140.110.217:8999" , "tinyos", "tinyos");
	}

	public List<Habit_Rank> getRank(int listSize, int offset) {
		QueryResult queryResult = influxDB.query(new Query("select * from DANGER_RANK_202002", "SAMPYO_MONIT"));
		InfluxDBResultMapper resultMapper = new InfluxDBResultMapper();
		List<Habit_Rank> temp = resultMapper.toPOJO(queryResult, Habit_Rank.class);		
		Collections.sort(temp);
		influxDB.close();
		List<Habit_Rank> rank_list = new ArrayList<Habit_Rank>();
		for(int i = offset; i < offset+listSize; i++) {
			if(i >= temp.size()) break;
			rank_list.add(temp.get(i));
		}
		return rank_list;
	}

	public double getCount() {
		QueryResult queryResult = influxDB.query(new Query("select count(rank) from DANGER_RANK_202002", "SAMPYO_MONIT"));
		InfluxDBResultMapper resultMapper = new InfluxDBResultMapper();		
		List<Habit_Count> rank_list = resultMapper.toPOJO(queryResult, Habit_Count.class);
		
		return Double.parseDouble(rank_list.get(0).getCount());
	}
}
