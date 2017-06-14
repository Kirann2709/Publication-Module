package com.publication.model;

public class Login {
	
	private String username;
	private String password;
	private String role;
	private String status;
	private String salt;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	@Override
	public String toString() {
		return "Login [username=" + username + ", password=" + password + ", role=" + role + ", status=" + status
				+ ", salt=" + salt + "]";
	}
	
	public Login(String username, String password, String status, String role, String salt){
		this.username = username;
		this.password = password;
		this.salt = salt;
		this.status = status;
		this.role = role;
	}
	
	public Login(){
		
	}
	

}
