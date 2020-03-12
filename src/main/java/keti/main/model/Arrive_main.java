package keti.main.model;

import org.influxdb.annotation.Column;
import org.influxdb.annotation.Measurement;

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
	
	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getGPS_LAT() {
		return GPS_LAT;
	}

	public void setGPS_LAT(String gPS_LAT) {
		GPS_LAT = gPS_LAT;
	}

	public String getGPS_LONG() {
		return GPS_LONG;
	}

	public void setGPS_LONG(String gPS_LONG) {
		GPS_LONG = gPS_LONG;
	}

	public String getCar_id() {
		return car_id;
	}

	public void setCar_id(String car_id) {
		this.car_id = car_id;
	}
}
