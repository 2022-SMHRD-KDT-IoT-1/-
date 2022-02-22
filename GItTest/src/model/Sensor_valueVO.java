package model;

import java.sql.Date;

public class Sensor_valueVO {
	// ¼¾½Ì ¼ø¹ø 
    private Double sensing_seq;

    // ¼¾¼­ ¼ø¹ø 
    private Double sensor_seq;

    // ¼¾½Ì °ª 
    private Double sensing_value;

    // ¼¾½Ì ½Ã°£ 
    private Date sensing_time;

	public Sensor_valueVO(Double sensing_seq, Double sensor_seq, Double sensing_value, Date sensing_time) {
		this.sensing_seq = sensing_seq;
		this.sensor_seq = sensor_seq;
		this.sensing_value = sensing_value;
		this.sensing_time = sensing_time;
	}

	public Double getSensing_seq() {
		return sensing_seq;
	}

	public void setSensing_seq(Double sensing_seq) {
		this.sensing_seq = sensing_seq;
	}

	public Double getSensor_seq() {
		return sensor_seq;
	}

	public void setSensor_seq(Double sensor_seq) {
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

    
}
