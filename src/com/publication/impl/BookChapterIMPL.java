package com.publication.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.publication.dao.BookChapterDAO;
import com.publication.database.ConnectionFactory;
import com.publication.model.BookChapter;

public class BookChapterIMPL implements BookChapterDAO {

	@Override
	public boolean saveBookChapter(BookChapter bookChapter) {
		// TODO Auto-generated method stub
		if(bookChapter == null){
			return false;
		}
		Connection  connection = null;
		PreparedStatement ps = null;
		try{
			connection = ConnectionFactory.getConnection();
			ps = connection.prepareStatement("insert into book_chapter (nameOauthors, deptt, chapterNo, chapterTitle, bookTitle, publisher, nationality, year, monthPublished, pageNo, isbn, hyperLink, indexFlag, indexLink) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, bookChapter.getNameOauthors() );
			ps.setString(2, bookChapter.getDeptt());
			ps.setInt(3, bookChapter.getChapterNo());
			ps.setString(4, bookChapter.getChapterTitle());
			ps.setString(5, bookChapter.getBookTitle());
			ps.setString(6, bookChapter.getPublisher());
			ps.setString(7, bookChapter.getNationality());
			ps.setInt(8, bookChapter.getYear());
			ps.setString(9, bookChapter.getMonthPublished());
			ps.setInt(10,bookChapter.getPageNo());
			ps.setString(11, bookChapter.getIsbn() );
			ps.setString(12, bookChapter.getHyperLink());
			ps.setString(13, bookChapter.getIndexFlag());
			ps.setString(14, bookChapter.getIndexLink());
			if(ps.executeUpdate()>0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			ConnectionFactory.close(connection);
		}
		return false;
	}

	@Override
	public boolean updateBookChapter(BookChapter bookChapter) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<BookChapter> getAllBookChapters() throws SQLException {
		
			BasicDataSource dataSource = new BasicDataSource();

			dataSource.setDriverClassName("com.mysql.jdbc.Driver");
			dataSource.setUsername("root");
			dataSource.setPassword("root");
			dataSource.setUrl("jdbc:mysql://localhost:3306/publication_module");
			//dataSource.setMaxActive(10);
			dataSource.setMaxIdle(5);
			dataSource.setInitialSize(5);
			dataSource.setValidationQuery("SELECT 1");
				QueryRunner runner = new QueryRunner(dataSource);
				
		ResultSetHandler<List<BookChapter>> h = new BeanListHandler<>(BookChapter.class);
		List<BookChapter> bookChapters = runner.query("Select * from book_chapter", h);

		return bookChapters;
	}
	

	@Override
	public BookChapter getBookChapterByPCN() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(String pcn) {
		// TODO Auto-generated method stub
		return false;
	}

	public static void main(String[] args) {
		BookChapterDAO dao = new BookChapterIMPL();
		try {
			System.out.println(dao.getAllBookChapters());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
