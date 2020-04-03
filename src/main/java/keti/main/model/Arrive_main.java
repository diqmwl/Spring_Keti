package keti.main.model;

import org.influxdb.annotation.Column;
import org.influxdb.annotation.Measurement;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Measurement(name = "MAIN2")
public class Arrive_main{

	@Column(name = "time")
	private String time;
	
	@Column(name = "GPS_LAT")
	private String GPS_LAT;
	
	@Column(name = "GPS_LONG")
	private String GPS_LONG;
	
	@Column(name = "car_id")
	private String car_id;
	
}
