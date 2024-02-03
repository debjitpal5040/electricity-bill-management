package com.debjit.pal.electricitybillmanagement.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbUtility {
    // public static final String DRIVER = "org.sqlite.JDBC";
	public static final String DBURL = "jdbc:mysql://localhost:3306/electricity_bill_management";
	public static final String DBUSER = "root";
	public static final String DBPASSWORD = "Debjit@123";

	public static Connection conn = null;

	public static boolean dbConnect() throws Exception {
		if (conn != null)
			return true;
		// Class.forName(DRIVER);
		conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
		return true;
	}
}
