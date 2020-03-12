package keti.main.model;

import org.influxdb.annotation.Column;
import org.influxdb.annotation.Measurement;

import lombok.Getter;
import lombok.Setter;

@Measurement(name = "VISIT_RULE")
public class Arrive_Visit {

	@Column(name = "time")
	private String time;
	
	@Column(name = "GPS_LAT")
	private String GPS_LAT;
	
	@Column(name = "GPS_LONG")
	private String GPS_LONG;
	
	@Column(name = "VISIT_END")
	private String VISIT_END;
	
	@Column(name = "VISIT_START")
	private String VISIT_START;
	
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

	public String getVISIT_END() {
		return VISIT_END;
	}

	public void setVISIT_END(String vISIT_END) {
		VISIT_END = vISIT_END;
	}

	public String getVISIT_START() {
		return VISIT_START;
	}

	public void setVISIT_START(String vISIT_START) {
		VISIT_START = vISIT_START;
	}

	public String getCar_id() {
		return car_id;
	}

	public void setCar_id(String car_id) {
		this.car_id = car_id;
	}
}
