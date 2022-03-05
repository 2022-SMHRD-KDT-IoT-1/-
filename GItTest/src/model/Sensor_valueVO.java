package model;

import java.sql.Date;

public class Sensor_valueVO {
	// ���� ���� 
    private int sensing_seq;

    // ���� ���� 
    private int sensor_seq;

    // ���� �� 
    private Double sensing_value;

    // ���� �ð� 
    private Date sensing_time;
    
    private String mb_id;
    
    
	public Sensor_valueVO(int sensing_seq, int sensor_seq, Double sensing_value, Date sensing_time, String mb_id) {
		this.sensing_seq = sensing_seq;
		this.sensor_seq = sensor_seq;
		this.sensing_value = sensing_value;
		this.sensing_time = sensing_time;
		this.mb_id = mb_id;
	}


	public Sensor_valueVO(int sensor_seq, double sensing_value, String mb_id) {
		this.sensor_seq = sensor_seq;
		this.sensing_value = sensing_value;
		this.mb_id = mb_id;
	}


	public int getSensing_seq() {
		return sensing_seq;
	}


	public void setSensing_seq(int sensing_seq) {
		this.sensing_seq = sensing_seq;
	}


	public int getSensor_seq() {
		return sensor_seq;
	}


	public void setSensor_seq(int sensor_seq) {
		this.sensor_seq = sensor_seq;
	}


	public Double getSensing_value() {
		return sensing_value;
	}


	public void setSensing_value(Double sensing_value) {
		this.sensing_value = sensing_value;
	}


	public Date getSensing_time() {
		return sensing_time;
	}


	public void setSensing_time(Date sensing_time) {
		this.sensing_time = sensing_time;
	}


	public String getMb_id() {
		return mb_id;
	}


	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	
    
}
