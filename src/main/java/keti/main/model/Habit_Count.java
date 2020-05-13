package keti.main.model;

import org.influxdb.annotation.Column;
import org.influxdb.annotation.Measurement;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Measurement(name = "DANGER_RANK_202002")
public class Habit_Count {

	@Column(name = "time")
	private String time;

	@Column(name = "count")
	private String count;
	
}
