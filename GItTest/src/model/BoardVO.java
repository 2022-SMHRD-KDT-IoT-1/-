package model;

public class BoardVO {

	private int article_seq;
	private String article_title;
	private String mb_id;
	private String article_content;
	private String article_file;
	private String article_date;
	
	
	public BoardVO(int article_seq, String article_title, String mb_id, String article_content, String article_file,
			String article_date) {
		this.article_seq = article_seq;
		this.article_title = article_title;
		this.mb_id = mb_id;
		this.article_content = article_content;
		this.article_file = article_file;
		this.article_date = article_date;
	}


	public BoardVO(String article_title, String mb_id, String article_content, String article_file) {
		this.article_title = article_title;
		this.mb_id = mb_id;
		this.article_content = article_content;
		this.article_file = article_file;
	}


	public int getArticle_seq() {
		return article_seq;
	}


	public void setArticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}


	public String getArticle_title() {
		return article_title;
	}


	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}


	public String getMb_id() {
		return mb_id;
	}


	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}


	public String getArticle_content() {
		return article_content;
	}


	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}


	public String getArticle_file() {
		return article_file;
	}


	public void setArticle_file(String article_file) {
		this.article_file = article_file;
	}


	public String getArticle_date() {
		return article_date;
	}


	public void setArticle_date(String article_date) {
		this.article_date = article_date;
	}
	
	
	
	
	
	
	
}
