package keti.main.model;

import org.influxdb.annotation.Column;
import org.influxdb.annotation.Measurement;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Measurement(name = "MAIN_RMC")
public class Broken_RMC {

	@Column(name = "time")
	private String time;

	@Column(name = "CM")
	private int CM;

	@Column(name = "DRIVE_SPEED")
	private int DRIVE_SPEED;
	
	@Column(name = "DTC")
	private String DTC;
	
	@Column(name = "FMI")
	private int FMI;
	
	@Column(name = "GPS_LAT")
	private String GPS_LAT;

	@Column(name = "GPS_LONG")
	private String GPS_LONG;

	@Column(name = "OC")
	private int OC;

	@Column(name = "RPM")
	private int RPM;
	
	@Column(name = "SPN")
	private int SPN;
	
	@Column(name = "car_id")
	private String car_id;
}
