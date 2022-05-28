package com.javaex.vo;

public class GuestBookVo {
	
	
	//일반
	private int no;
	private String name;
	private String password;
	private String blank;
	private String date;
	
	//생성자
	public GuestBookVo() {
		
	}
	
	
	public GuestBookVo(int no, String name, String password, String blank, String date) {
		this.no = no;
		this.name = name;
		this.password = password;
		this.blank = blank;
		this.date = date;
	}
	
	
	public GuestBookVo(String name, String password, String blank, String date) {
		super();
		this.name = name;
		this.password = password;
		this.blank = blank;
		this.date = date;
	}


	
	//메소드 gs
	
	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}
	
	
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getBlank() {
		return blank;
	}


	public void setBlank(String blank) {
		this.blank = blank;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}

	
	//메소드 일반
	@Override
	public String toString() {
		return "GuestBookVo [no=\" + no + name=" + name + ", password=" + password + ", blank=" + blank + ", date=" + date + "]";
	}
	
}