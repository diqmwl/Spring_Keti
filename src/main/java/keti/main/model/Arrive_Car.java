package keti.main.model;

import org.influxdb.annotation.Column;
import org.influxdb.annotation.Measurement;

@Measurement(name = "DEPARTUREARRIVAL")
public class Arrive_Car {

	@Column(name = "time")
	private String time;

	@Column(name = "CAR_ID")
	private String CAR_ID;

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getCAR_ID() {
		return CAR_ID;
	}

	public void setCAR_ID(String cAR_ID) {
		CAR_ID = cAR_ID;
	}
}
