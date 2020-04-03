package keti.main.model;

import org.influxdb.annotation.Column;
import org.influxdb.annotation.Measurement;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Measurement(name = "SPN_CODE")
public class Broken_SPN {

	@Column(name = "time")
	private String time;

	@Column(name = "CODE")
	private int CODE;
	
	@Column(name = "DESCRIPTION")
	private String DESCRIPTION;
	
	@Column(name = "NAME")
	private String NAME;
	
	@Column(name = "code")
	private String code;
}
