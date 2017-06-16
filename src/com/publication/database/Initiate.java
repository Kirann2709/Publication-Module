package com.publication.database;

import java.sql.Connection;
import java.sql.Statement;

public class Initiate {
	
	Statement stmt;
	
	public Initiate(){
		Connection conn = null;
	    try{
	    	conn = ConnectionFactory.getConnection();
	    	stmt = conn.createStatement();
	    	String q1 = "create table if not exists login"
	    			+ "( username varchar(200) primary key,"
	    			+ "password varchar(200) not null,"
	    			+ "role varchar(200),"
	    			+ "status varchar(200),"
	    			+ "salt varchar(200)"
	    			+ ");";
	    	stmt.executeUpdate(q1);
	    	
	    	String q2 = "create table book_chapter("
	    			+ "pcn varchar(200) unique,"
	    			+ "nameOauthors varchar(200),"
	    			+ "deptt varchar(200),"
	    			+ "chapterNo varchar(200),"
	    			+ "chapterTitle varchar(200),"
	    			+ "bookTitle varchar(200),"
	    			+ "publisher varchar(200),"
	    			+ "nationality varchar(200),"
	    			+ "year int,"
	    			+ "monthPublished varchar(200),"
	    			+ "monthAssigned varchar(200),"
	    			+ "pageNo varchar(200),"
	    			+ "isbn varchar(200),"
	    			+ "hyperLink varchar(200),"
	    			+ "indexFlag varchar(200),"
	    			+ "indexLink varchar(200),"
	    			+ "status int"
	    			+ "primary key(deptt,bookTitle, chapterTitle, chapterNo, publisher, isbn)"
	    			+ ");";
	    	stmt.executeUpdate(q2);
	    }catch(Exception e){
	    	e.printStackTrace();
	    }
	    finally {
			ConnectionFactory.close(conn);
			stmt=null;
		}	
	}
	public static void main(String[] args) {
		new Initiate();
	}
}
