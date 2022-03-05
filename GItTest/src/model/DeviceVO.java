package model;

import java.sql.Date;

public class DeviceVO {
	// �ٺ��̽� ���� 
    private int device_seq;

    // �ٺ�ƽ� ���̵� 
    private String device_uid;

    // ��ġ ���� 
    private Date device_date;

    // ����� ���̵� 
    private String mb_id;

	public DeviceVO(int device_seq, String device_uid, Date device_date, String mb_id) {
		this.device_seq = device_seq;
		this.device_uid = device_uid;
		this.device_date = device_date;
		this.mb_id = mb_id;
	}

	public int getDevice_seq() {
		return device_seq;
	}

	public void setDevice_seq(int device_seq) {
		this.device_seq = device_seq;
	}

	public String getDevice_uid() {
		return device_uid;
	}

	public void setDevice_uid(String device_uid) {
		this.device_uid = device_uid;
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
