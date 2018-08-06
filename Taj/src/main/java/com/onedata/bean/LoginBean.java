package com.onedata.bean;

import java.util.ArrayList;

public class LoginBean {
	private String uname;
	private String pass;
	private ArrayList<LoginBean> arrList;
	
	public ArrayList<LoginBean> getArrList() {
		return arrList;
	}
	public void setArrList(ArrayList<LoginBean> arrList) {
		this.arrList = arrList;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
}
