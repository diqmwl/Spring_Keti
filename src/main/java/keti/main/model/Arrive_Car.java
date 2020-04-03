package keti.main.model;

import org.influxdb.annotation.Column;
import org.influxdb.annotation.Measurement;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Measurement(name = "DEPARTUREARRIVAL")
public class Arrive_Car {

	@Column(name = "time")
	private String time;

	@Column(name = "CAR_ID")
	private String CAR_ID;

}
