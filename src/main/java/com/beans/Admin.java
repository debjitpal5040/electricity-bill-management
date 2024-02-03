package com.beans;

public class Admin {
	private String email;
	private String password;
	private String userType;
	private String status;

	public Admin(String email, String password, String userType, String status) {
		super();
		this.email = email;
		this.password = password;
		this.userType = userType;
		this.status = status;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
