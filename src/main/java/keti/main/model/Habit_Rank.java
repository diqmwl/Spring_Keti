package keti.main.model;

import org.influxdb.annotation.Column;
import org.influxdb.annotation.Measurement;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Measurement(name = "DANGER_RANK_202002")
public class Habit_Rank implements Comparable<Habit_Rank> {

	@Column(name = "time")
	private String time;

	@Column(name = "A")
	private String A;
	
	@Column(name = "D")
	private String D;
	
	@Column(name = "O")
	private String O;
	
	@Column(name = "Q")
	private String Q;

	@Column(name = "S")
	private String S;
	
	@Column(name = "SL")
	private String SL;
	
	@Column(name = "T")
	private String T;
	
	@Column(name = "UL")
	private String UL;
	
	@Column(name = "UR")
	private String UR;
	
	@Column(name = "car_id")
	private String car_id;
	
	@Column(name = "drive_length")
	private String drive_length;
	
	@Column(name = "rank")
	private String rank;
	
	@Column(name = "rank_relative")
	private String rank_relative;
	
	@Column(name = "total_danger")
	private String total_danger;

	@Override
	public int compareTo(Habit_Rank habit_Rank) {
		// TODO Auto-generated method stub
		return Integer.parseInt(habit_Rank.rank)-Integer.parseInt(this.rank);
	}
}
