package keti.main.model;

import org.influxdb.annotation.Column;
import org.influxdb.annotation.Measurement;

import lombok.Getter;
import lombok.Setter;

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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getBASE_NUM() {
		return BASE_NUM;
	}

	public void setBASE_NUM(String bASE_NUM) {
		BASE_NUM = bASE_NUM;
	}

	public String getCAR_ID() {
		return CAR_ID;
	}

	public void setCAR_ID(String cAR_ID) {
		CAR_ID = cAR_ID;
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

	public String getLOC_NAME() {
		return LOC_NAME;
	}

	public void setLOC_NAME(String lOC_NAME) {
		LOC_NAME = lOC_NAME;
	}

	public String getLOC_NUM() {
		return LOC_NUM;
	}

	public void setLOC_NUM(String lOC_NUM) {
		LOC_NUM = lOC_NUM;
	}

	public String getCar_id() {
		return car_id;
	}

	public void setCar_id(String car_id) {
		this.car_id = car_id;
	}

	@Override
	public int compareTo(Arrive_Factory arrive_Factory) {
		// TODO Auto-generated method stub
		return arrive_Factory.time.compareTo(this.time);
	}
}
