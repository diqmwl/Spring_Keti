package keti.main.model;

import org.influxdb.annotation.Column;
import org.influxdb.annotation.Measurement;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Broken_RMC {

	private String time;

	private String car_id;
	
	private int FMI;
	
	private String FMI_NAME;

	private int SPN;
	
	private String SPN_DESCRIPTION;

	private String DTC;

	private int CM;

	private int DRIVE_SPEED;
	
	private int OC;

	private int RPM;
	
	private String GPS_LAT;

	private String GPS_LONG;

}
