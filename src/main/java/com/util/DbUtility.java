package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbUtility {

	public static final String DRIVER = "org.sqlite.JDBC";
	public static final String DBURL = "jdbc:sqlite:/Users/debjitpal/MySQLiteDB";
	public static final String DBUSER = "";
	public static final String DBPASSWORD = "";

	public static Connection conn = null;

	public static boolean dbConnect() throws Exception {
		if (conn != null)
			return true;
		Class.forName(DRIVER);
		conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
		return true;
	}
}
