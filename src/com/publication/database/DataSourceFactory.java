package com.publication.database;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

public class DataSourceFactory {

	
	public static DataSource getMySQLDataSource() {
		Properties props = new Properties();
		FileInputStream fis = null;
		MysqlDataSource mysqlDS = null;
		try {
			//fis = new FileInputStream("db.properties");
			//props.load(fis);
			mysqlDS = new MysqlDataSource();
			mysqlDS.setURL("jdbc:mysql://localhost/publication_module");
			mysqlDS.setUser("root");
			mysqlDS.setPassword("root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mysqlDS;
	}
	
	public static void main(String[] args) throws SQLException {
		DataSource ds = DataSourceFactory.getMySQLDataSource();
		Connection conn= ds.getConnection();
		System.out.println(conn.isClosed());
		conn.close();
		System.out.println(conn.isClosed());
	}
	
	
}
