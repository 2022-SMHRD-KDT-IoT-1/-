package model;

import java.sql.Date;

public class NewsVO {
	public class TNews {

	    // 뉴스 번호 
	    private int news_seq;

	    // 뉴스 제목 
	    private String news_title;

	    // 뉴스 내용 
	    private String news_content;

	    // 뉴스 제공사이트 
	    private String news_url;

	    // 뉴스 일자 
	    private Date news_date;

	    // 뉴스 첨부파일1 
	    private String news_file1;

	    // 뉴스 첨부파일2 
	    private String news_file2;

	    // 작성일자 
	    private Date reg_date;

	    // 작성자 아이디 
	    private String mb_id;

		public TNews(int news_seq, String news_title, String news_content, String news_url, Date news_date,
				String news_file1, String news_file2, Date reg_date, String mb_id) {
			this.news_seq = news_seq;
			this.news_title = news_title;
			this.news_content = news_content;
			this.news_url = news_url;
			this.news_date = news_date;
			this.news_file1 = news_file1;
			this.news_file2 = news_file2;
			this.reg_date = reg_date;
			this.mb_id = mb_id;
		}

		public int getNews_seq() {
			return news_seq;
		}

		public void setNews_seq(int news_seq) {
			this.news_seq = news_seq;
		}

		public String getNews_title() {
			return news_title;
		}

		public void setNews_title(String news_title) {
			this.news_title = news_title;
		}

		public String getNews_content() {
			return news_content;
		}

		public void setNews_content(String news_content) {
			this.news_content = news_content;
		}

		public String getNews_url() {
			return news_url;
		}

		public void setNews_url(String news_url) {
			this.news_url = news_url;
		}

		public Date getNews_date() {
			return news_date;
		}

		public void setNews_date(Date news_date) {
			this.news_date = news_date;
		}

		public String getNews_file1() {
			return news_file1;
		}

		public void setNews_file1(String news_file1) {
			this.news_file1 = news_file1;
		}

		public String getNews_file2() {
			return news_file2;
		}

		public void setNews_file2(String news_file2) {
			this.news_file2 = news_file2;
		}

		public Date getReg_date() {
			return reg_date;
		}

		public void setReg_date(Date reg_date) {
			this.reg_date = reg_date;
		}

		public String getMb_id() {
			return mb_id;
		}

		public void setMb_id(String mb_id) {
			this.mb_id = mb_id;
		}

	    
	   
	}
}
