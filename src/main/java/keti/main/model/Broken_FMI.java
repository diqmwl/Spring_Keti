package keti.main.model;

import org.influxdb.annotation.Column;
import org.influxdb.annotation.Measurement;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Measurement(name = "FMI_CODE")
public class Broken_FMI {

	@Column(name = "time")
	private String time;

	@Column(name = "CODE")
	private int CODE;

	@Column(name = "NAME")
	private String NAME;
	
	@Column(name = "code")
	private String code;
}
