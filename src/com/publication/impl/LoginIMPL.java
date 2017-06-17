package com.publication.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.util.List;

import com.publication.constants.BCrypt;
import com.publication.constants.LoginStatus;
import com.publication.dao.LoginDAO;
import com.publication.database.ConnectionFactory;
import com.publication.model.Login;

public class LoginIMPL  implements LoginDAO{

	@Override
	public LoginStatus validateLogin(String username , String password, String role) {
		
		Login login = getLogin(username);
		if(login == null){
			return LoginStatus.NO_SUCH_ACCOUNT_FOUND;
		}
		if(role.equals(login.getRole())){
			if(login.getStatus().equals("active")){
				if(login.getPassword().equals(BCrypt.hashpw(password, login.getSalt()))){
					return LoginStatus.SUCCESS;
				}else{
					return LoginStatus.WRONG_PASSWORD;
				}
			}else{
				return LoginStatus.DEACTIVATED;
			}
		}else{
			return LoginStatus.NOT_AUTHORIZED;
		}
		
	}

	@Override
	public Login getLogin(String username) {
		Connection conn = null;
		PreparedStatement ps1 = null;
		try{
			conn = ConnectionFactory.getConnection();
			ps1 = conn.prepareStatement("select * from login where username=?");
			ps1.setString(1, username);
			ResultSet set = ps1.executeQuery();
			if(set.next()){
				Login login =  new Login();
				login.setUsername(set.getString("username"));
				login.setPassword(set.getString("password"));
				login.setStatus(set.getString("status"));
				login.setRole(set.getString("role"));
				login.setSalt(set.getString("salt"));
				return login;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			ConnectionFactory.close(conn);
		}
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Login> getAllLogins() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public boolean saveNewLogin(Login login){
		Connection conn = null;
		PreparedStatement ps1 = null;
		try{
			conn = ConnectionFactory.getConnection();
			ps1 = conn.prepareStatement("insert into login (username, password, salt, role, status)  values (?,?,?,?,?)");
			ps1.setString(1, login.getUsername());
			ps1.setString(2, login.getPassword());
			ps1.setString(3, login.getSalt());
			ps1.setString(4, login.getRole());
			ps1.setString(5, login.getStatus());
			if(ps1.executeUpdate()>0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			ConnectionFactory.close(conn);
		}
		
		return false;
	}

	
	
}
