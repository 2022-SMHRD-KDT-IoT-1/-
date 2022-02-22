package model;

import java.sql.Date;

public class DeviceVO {
	// 다비이스 순번 
    private Double device_seq;

    // 다비아스 아이디 
    private String device_uid;

    // 설치 장소 
    private String device_loc;

    // 설치 일자 
    private Date device_date;

    // 사용자 아이디 
    private String mb_id;

	public DeviceVO(Double device_seq, String device_uid, String device_loc, Date device_date, String mb_id) {
		this.device_seq = device_seq;
		this.device_uid = device_uid;
		this.device_loc = device_loc;
		this.device_date = device_date;
		this.mb_id = mb_id;
	}

	public Double getDevice_seq() {
		return device_seq;
	}

	public void setDevice_seq(Double device_seq) {
		this.device_seq = device_seq;
	}

	public String getDevice_uid() {
		return device_uid;
	}

	public void setDevice_uid(String device_uid) {
		this.device_uid = device_uid;
	}

	public String getDevice_loc() {
		return device_loc;
	}

	public void setDevice_loc(String device_loc) {
		this.device_loc = device_loc;
	}

	public Date getDevice_date() {
		return device_date;
	}

	public void setDevice_date(Date device_date) {
		this.device_date = device_date;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
    
     

}
