package com.publication.model;

public class BookChapter {
	
	private String pcn;
	private String nameOauthors;
	private String deptt;
	private int chapterNo;
	private String chapterTitle;
	private	String bookTitle;
	private String publisher;
	private	String nationality;
	private	int year;
	private	String monthPublished;
	private String monthOfPCN;
	private int pageNo;
	private String isbn;
	private String hyperLink;
	private String indexFlag;
	private String indexLink;
	public String getPcn() {
		return pcn;
	}
	public void setPcn(String pcn) {
		this.pcn = pcn;
	}
	public String getNameOauthors() {
		return nameOauthors;
	}
	public void setNameOauthors(String nameOauthors) {
		this.nameOauthors = nameOauthors;
	}
	public String getDeptt() {
		return deptt;
	}
	public void setDeptt(String deptt) {
		this.deptt = deptt;
	}
	public int getChapterNo() {
		return chapterNo;
	}
	public void setChapterNo(int chapterNo) {
		this.chapterNo = chapterNo;
	}
	public String getChapterTitle() {
		return chapterTitle;
	}
	public void setChapterTitle(String chapterTitle) {
		this.chapterTitle = chapterTitle;
	}
	public String getBookTitle() {
		return bookTitle;
	}
	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getMonthPublished() {
		return monthPublished;
	}
	public void setMonthPublished(String monthPublished) {
		this.monthPublished = monthPublished;
	}
	public String getMonthOfPCN() {
		return monthOfPCN;
	}
	public void setMonthOfPCN(String monthOfPCN) {
		this.monthOfPCN = monthOfPCN;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getHyperLink() {
		return hyperLink;
	}
	public void setHyperLink(String hyperLink) {
		this.hyperLink = hyperLink;
	}
	public String getIndexFlag() {
		return indexFlag;
	}
	public void setIndexFlag(String indexFlag) {
		this.indexFlag = indexFlag;
	}
	public String getIndexLink() {
		return indexLink;
	}
	public void setIndexLink(String indexLink) {
		this.indexLink = indexLink;
	}
	@Override
	public String toString() {
		return "Book [pcn=" + pcn + ", nameOauthors=" + nameOauthors + ", deptt=" + deptt + ", chapterNo=" + chapterNo
				+ ", chapterTitle=" + chapterTitle + ", bookTitle=" + bookTitle + ", publisher=" + publisher
				+ ", nationality=" + nationality + ", year=" + year + ", monthPublished=" + monthPublished
				+ ", monthOfPCN=" + monthOfPCN + ", pageNo=" + pageNo + ", isbn=" + isbn + ", hyperLink=" + hyperLink
				+ ", indexFlag=" + indexFlag + ", indexLink=" + indexLink + "]";
	}
	public BookChapter(String pcn, String nameOauthors, String deptt, int chapterNo, String chapterTitle, String bookTitle,
			String publisher, String nationality, int year, String monthPublished, String monthOfPCN, int pageNo,
			String isbn, String hyperLink, String indexFlag, String indexLink) {
		this.pcn = pcn;
		this.nameOauthors = nameOauthors;
		this.deptt = deptt;
		this.chapterNo = chapterNo;
		this.chapterTitle = chapterTitle;
		this.bookTitle = bookTitle;
		this.publisher = publisher;
		this.nationality = nationality;
		this.year = year;
		this.monthPublished = monthPublished;
		this.monthOfPCN = monthOfPCN;
		this.pageNo = pageNo;
		this.isbn = isbn;
		this.hyperLink = hyperLink;
		this.indexFlag = indexFlag;
		this.indexLink = indexLink;
	}
	
	public BookChapter(){
		
	}
	
}
