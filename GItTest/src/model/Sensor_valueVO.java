package model;

import java.sql.Date;

public class Sensor_valueVO {
	// 센싱 순번
	private int sensing_seq;

	// 체온
	private double temperature;

	// 습도
	private double humidity;

	// 가속도 x,y,z
	private double xacceleration;
	private double yacceleration;
	private double zacceleration;
	// 심장
	private int heart_rate;

	// 센싱 시간
	private Date sensing_time;
	// 회원 아이디
	private String mb_id;
	
	
	
	
	public Sensor_valueVO(int sensing_seq, double temperature, double humidity, double xacceleration,
			double yacceleration, double zacceleration, int heart_rate, Date sensing_time, String mb_id) {
		super();
		this.sensing_seq = sensing_seq;
		this.temperature = temperature;
		this.humidity = humidity;
		this.xacceleration = xacceleration;
		this.yacceleration = yacceleration;
		this.zacceleration = zacceleration;
		this.heart_rate = heart_rate;
		this.sensing_time = sensing_time;
		this.mb_id = mb_id;
	}



	
	
	
	public Sensor_valueVO(double temperature, double humidity, double xacceleration, double yacceleration,
			double zacceleration, int heart_rate, String mb_id) {
		super();
		this.temperature = temperature;
		this.humidity = humidity;
		this.xacceleration = xacceleration;
		this.yacceleration = yacceleration;
		this.zacceleration = zacceleration;
		this.heart_rate = heart_rate;
		this.mb_id = mb_id;
	}






	public int getSensing_seq() {
		return sensing_seq;
	}






	public void setSensing_seq(int sensing_seq) {
		this.sensing_seq = sensing_seq;
	}






	public double getTemperature() {
		return temperature;
	}






	public void setTemperature(double temperature) {
		this.temperature = temperature;
	}






	public double getHumidity() {
		return humidity;
	}






	public void setHumidity(double humidity) {
		this.humidity = humidity;
	}






	public double getXacceleration() {
		return xacceleration;
	}






	public void setXacceleration(double xacceleration) {
		this.xacceleration = xacceleration;
	}






	public double getYacceleration() {
		return yacceleration;
	}






	public void setYacceleration(double yacceleration) {
		this.yacceleration = yacceleration;
	}






	public double getZacceleration() {
		return zacceleration;
	}






	public void setZacceleration(double zacceleration) {
		this.zacceleration = zacceleration;
	}






	public int getHeart_rate() {
		return heart_rate;
	}






	public void setHeart_rate(int heart_rate) {
		this.heart_rate = heart_rate;
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
