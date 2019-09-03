package com.nt.pojo;

public class User {
	private Integer user_id;
	private String user_name;
	private String user_password;
	private String user_type;
	private String user_atatus;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User( String user_name, String user_password) {
		super();
		
		this.user_name = user_name;
		this.user_password = user_password;
	
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
	public String getUser_atatus() {
		return user_atatus;
	}
	public void setUser_atatus(String user_atatus) {
		this.user_atatus = user_atatus;
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_name=" + user_name + ", user_password=" + user_password
				+ ", user_type=" + user_type + ", user_atatus=" + user_atatus + "]";
	}
	
	
	 

}
