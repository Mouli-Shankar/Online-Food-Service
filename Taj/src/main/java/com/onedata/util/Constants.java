package com.onedata.util;

public class Constants {
	
	public static String SELECT_USERS = "select uname, pass from user_credentials where uname = ? AND pass = ?;";
	public static String SELECT_USER = "select uname from user_credentials where uname = ?;";
	public static String INSERT_USER = "insert into user_credentials (uname,pass,email,mobile,address) values (?,?,?,?,?);";
	
	public static final String UNAME = "uname";
	public static final String PASS = "pass";

}
