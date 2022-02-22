package model;

import java.sql.Date;

public class CommunityVO {
	// 글 번호 
    private Double article_seq;

    // 글 제목 
    private String article_title;

    // 글 내용 
    private String article_content;

    // 글 첨부파일1 
    private String article_file1;

    // 글 첨부파일2 
    private String article_file2;

    // 글 작성일자 
    private Date article_date;

    // 글 작성자 아이디 
    private String mb_id;

	public CommunityVO(Double article_seq, String article_title, String article_content, String article_file1,
			String article_file2, Date article_date, String mb_id) {
		this.article_seq = article_seq;
		this.article_title = article_title;
		this.article_content = article_content;
		this.article_file1 = article_file1;
		this.article_file2 = article_file2;
		this.article_date = article_date;
		this.mb_id = mb_id;
	}

	public Double getArticle_seq() {
		return article_seq;
	}

	public void setArticle_seq(Double article_seq) {
		this.article_seq = article_seq;
	}

	public String getArticle_title() {
		return article_title;
	}

	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}

	public String getArticle_content() {
		return article_content;
	}

	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}

	public String getArticle_file1() {
		return article_file1;
	}

	public void setArticle_file1(String article_file1) {
		this.article_file1 = article_file1;
	}

	public String getArticle_file2() {
		return article_file2;
	}

	public void setArticle_file2(String article_file2) {
		this.article_file2 = article_file2;
	}

	public Date getArticle_date() {
		return article_date;
	}

	public void setArticle_date(Date article_date) {
		this.article_date = article_date;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
    
	
    
}
