package model;

import java.sql.Date;

public class SensorVO {
	// 센서 순번 
    private Double sensor_seq;

    // 디바이스 순번 
    private Double device_seq;

    // 센서 아이디 
    private String sensor_uid;

    // 센서 종류 
    private String sensor_type;

    // 센서 설치 일자 
    private Date sensor_date;

	public SensorVO(Double sensor_seq, Double device_seq, String sensor_uid, String sensor_type, Date sensor_date) {
		this.sensor_seq = sensor_seq;
		this.device_seq = device_seq;
		this.sensor_uid = sensor_uid;
		this.sensor_type = sensor_type;
		this.sensor_date = sensor_date;
	}

	public Double getSensor_seq() {
		return sensor_seq;
	}

	public void setSensor_seq(Double sensor_seq) {
		this.sensor_seq = sensor_seq;
	}

	public Double getDevice_seq() {
		return device_seq;
	}

	public void setDevice_seq(Double device_seq) {
		this.device_seq = device_seq;
	}

	public String getSensor_uid() {
		return sensor_uid;
	}

	public void setSensor_uid(String sensor_uid) {
		this.sensor_uid = sensor_uid;
	}

	public String getSensor_type() {
		return sensor_type;
	}

	public void setSensor_type(String sensor_type) {
		this.sensor_type = sensor_type;
	}

	public Date getSensor_date() {
		return sensor_date;
	}

	public void setSensor_date(Date sensor_date) {
		this.sensor_date = sensor_date;
	}
    
    
}
