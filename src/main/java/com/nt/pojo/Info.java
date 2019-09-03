package com.nt.pojo;

import java.util.Date;

public class Info {
	private int info_id;
	private String info_type;
	private String info_title;
	private String info_content;
	private String info_linkman;
	private String info_phone;
	private String info_email;
	private String info_data;
	private String info_check;
	private String info_payfor;
	private String info_status;
	public int getInfo_id() {
		return info_id;
	}
	public void setInfo_id(int info_id) {
		this.info_id = info_id;
	}
	
	public String getInfo_type() {
		return info_type;
	}
	public void setInfo_type(String info_type) {
		this.info_type = info_type;
	}
	public String getInfo_title() {
		return info_title;
	}
	public void setInfo_title(String info_title) {
		this.info_title = info_title;
	}
	public String getInfo_content() {
		return info_content;
	}
	public void setInfo_content(String info_content) {
		this.info_content = info_content;
	}
	public String getInfo_linkman() {
		return info_linkman;
	}
	public void setInfo_linkman(String info_linkman) {
		this.info_linkman = info_linkman;
	}
	public String getInfo_phone() {
		return info_phone;
	}
	public void setInfo_phone(String info_phone) {
		this.info_phone = info_phone;
	}
	public String getInfo_email() {
		return info_email;
	}
	public void setInfo_email(String info_email) {
		this.info_email = info_email;
	}
	
	public String getInfo_data() {
		return info_data;
	}
	public void setInfo_data(String info_data) {
		this.info_data = info_data;
	}
	public String getInfo_check() {
		return info_check;
	}
	public void setInfo_check(String info_check) {
		this.info_check = info_check;
	}
	public String getInfo_payfor() {
		return info_payfor;
	}
	public void setInfo_payfor(String info_payfor) {
		this.info_payfor = info_payfor;
	}
	public String getInfo_status() {
		return info_status;
	}
	public void setInfo_status(String info_status) {
		this.info_status = info_status;
	}
	@Override
	public String toString() {
		return "Info [info_id=" + info_id + ", info_type=" + info_type + ", info_title=" + info_title
				+ ", info_content=" + info_content + ", info_linkman=" + info_linkman + ", info_phone=" + info_phone
				+ ", info_email=" + info_email + ", info_data=" + info_data + ", info_check=" + info_check
				+ ", info_payfor=" + info_payfor + ", info_status=" + info_status + "]";
	}
	
	
	
}
