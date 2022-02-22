package model;

import java.sql.Date;

public class MemberVO {
	// ȸ�� ���̵� 
    private String mb_id;

    // ȸ�� ��й�ȣ 
    private String mb_pw;

    // ȸ�� �̸� 
    private String mb_name;

    // ȸ�� ��ȭ��ȣ 
    private String mb_phone;

    // ȸ�� �������� 
    private Date mb_joindate;

    // ������ ���� 
    private String admin_yn;

	public MemberVO(String mb_id, String mb_pw, String mb_name, String mb_phone, Date mb_joindate, String admin_yn) {
		this.mb_id = mb_id;
		this.mb_pw = mb_pw;
		this.mb_name = mb_name;
		this.mb_phone = mb_phone;
		this.mb_joindate = mb_joindate;
		this.admin_yn = admin_yn;
	}

	public MemberVO(String mb_id, String mb_pw) {
		this.mb_id = mb_id;
		this.mb_pw = mb_pw;
	}

	public MemberVO(String mb_id, String mb_pw, String mb_name, String mb_phone) {
		this.mb_id = mb_id;
		this.mb_pw = mb_pw;
		this.mb_name = mb_name;
		this.mb_phone = mb_phone;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getMb_pw() {
		return mb_pw;
	}

	public void setMb_pw(String mb_pw) {
		this.mb_pw = mb_pw;
	}

	public String getMb_name() {
		return mb_name;
	}

	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}

	public String getMb_phone() {
		return mb_phone;
	}

	public void setMb_phone(String mb_phone) {
		this.mb_phone = mb_phone;
	}

	public Date getMb_joindate() {
		return mb_joindate;
	}

	public void setMb_joindate(Date mb_joindate) {
		this.mb_joindate = mb_joindate;
	}

	public String getAdmin_yn() {
		return admin_yn;
	}

	public void setAdmin_yn(String admin_yn) {
		this.admin_yn = admin_yn;
	}
    
	
    
}
