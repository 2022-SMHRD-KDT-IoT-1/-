package model;

import java.sql.Date;

public class CommentVO {
	// ´ñ±Û ¼ø¹ø 
    private int comm_seq;

    // ¿ø±Û ¼ø¹ø 
    private int article_seq;

    // ´ñ±Û ³»¿ë 
    private String comm_content;

    // ´ñ±Û ÀÛ¼ºÀÏÀÚ 
    private Date comm_date;

    // ´ñ±Û ÀÛ¼ºÀÚ 
    private String mb_id;

	public CommentVO(int comm_seq, int article_seq, String comm_content, Date comm_date, String mb_id) {
		this.comm_seq = comm_seq;
		this.article_seq = article_seq;
		this.comm_content = comm_content;
		this.comm_date = comm_date;
		this.mb_id = mb_id;
	}

	public int getComm_seq() {
		return comm_seq;
	}

	public void setComm_seq(int comm_seq) {
		this.comm_seq = comm_seq;
	}

	public int getArticle_seq() {
		return article_seq;
	}

	public void setArticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}

	public String getComm_content() {
		return comm_content;
	}

	public void setComm_content(String comm_content) {
		this.comm_content = comm_content;
	}

	public Date getComm_date() {
		return comm_date;
	}

	public void setComm_date(Date comm_date) {
		this.comm_date = comm_date;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
    
    
    
}
