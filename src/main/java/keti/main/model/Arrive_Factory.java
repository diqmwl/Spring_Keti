package keti.main.model;

import org.influxdb.annotation.Column;
import org.influxdb.annotation.Measurement;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Measurement(name = "DEPARTUREARRIVAL")
public class Arrive_Factory implements Comparable<Arrive_Factory> {

	@Column(name = "time")
	private String time;

	@Column(name = "BASE_NUM")
	private String BASE_NUM;
	
	@Column(name = "CAR_ID")
	private String CAR_ID;
	
	@Column(name = "GPS_LAT")
	private String GPS_LAT;
	
	@Column(name = "GPS_LONG")
	private String GPS_LONG;

	@Column(name = "LOC_NAME")
	private String LOC_NAME;
	
	@Column(name = "LOC_NUM")
	private String LOC_NUM;
	
	@Column(name = "car_id")
	private String car_id;

	@Override
	public int compareTo(Arrive_Factory arrive_Factory) {
		// TODO Auto-generated method stub
		return arrive_Factory.time.compareTo(this.time);
	}
}
