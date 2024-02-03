package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.beans.Customer;
import com.util.DbUtility;

public class customerDao {

	public static int register(String firstName, String lastName, String email, String password, String phone,
			String address) throws Exception {
		if (!DbUtility.dbConnect())
			return -1;
		PreparedStatement ps = DbUtility.conn.prepareStatement(
				"insert into customer (firstName, lastName, email, password, phone, address) values (?, ?, ?, ?, ?, ?);",
				PreparedStatement.RETURN_GENERATED_KEYS);
		ps.setString(1, firstName);
		ps.setString(2, lastName);
		ps.setString(3, email);
		ps.setString(4, password);
		ps.setString(5, phone);
		ps.setString(6, address);
		if (ps.executeUpdate() > 0) {
			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {
				ps.close();
				return rs.getInt(1);
			}
		}
		ps.close();
		return -1;
	}

	public static Customer login(String email, String password) throws Exception {
		if (!DbUtility.dbConnect())
			return null;
		PreparedStatement ps = DbUtility.conn.prepareStatement(
				"select * from customer where email='" + email + "' and password='" + password + "';");
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			System.out.println("2..");
			int consumerId = rs.getInt(1);
			String firstName = rs.getString(2);
			String lastName = rs.getString(3);
			String phone = rs.getString(6);
			String address = rs.getString(7);
			ps.close();
			return new Customer(consumerId, firstName, lastName, email, password, phone, address);
		}
		ps.close();
		return null;
	}

	public static List<Customer> getAllCustomers() throws Exception {
		if (!DbUtility.dbConnect())
			return null;
		PreparedStatement ps = DbUtility.conn.prepareStatement(
				"select * from customer;");
		ResultSet rs = ps.executeQuery();
		List<Customer> arr = new ArrayList<Customer>();
		while (rs.next()) {
			int consumerId = rs.getInt(1);
			String firstName = rs.getString(2);
			String lastName = rs.getString(3);
			String email = rs.getString(4);
			String phone = rs.getString(6);
			String address = rs.getString(7);
			arr.add(new Customer(consumerId, firstName, lastName, email, "", phone, address));
		}
		ps.close();
		return arr;
	}

	public static boolean update(int consumerId, String firstName, String lastName, String email, String password,
			String phone, String address) throws Exception {
		if (!DbUtility.dbConnect())
			return false;
		PreparedStatement ps = DbUtility.conn.prepareStatement(
				"update customer set firstName=?, lastName=?, email=?, password=?, phone=?, address=? where consumerId=?;");
		ps.setString(1, firstName);
		ps.setString(2, lastName);
		ps.setString(3, email);
		ps.setString(4, password);
		ps.setString(5, phone);
		ps.setString(6, address);
		ps.setInt(7, consumerId);
		if (ps.executeUpdate() > 0) {
			ps.close();
			return true;
		}
		ps.close();
		return false;
	}

	public static boolean deleteCustomerById(int consumerId) throws Exception {
		if (!DbUtility.dbConnect())
			return false;
		PreparedStatement ps = DbUtility.conn.prepareStatement(
				"delete from customer where consumerId='" + consumerId + "';");
		if (ps.executeUpdate() > 0) {
			ps.close();
			return true;
		}
		ps.close();
		return false;
	}

}
