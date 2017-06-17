<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Tech Rep</title>
<link rel="stylesheet" href="../resources/styles/css/bootstrap.css">
<style>
 .container{
  width:100%;
 }

li.borderless {
  border-bottom: 0 none;
  border-top: none; 
}

ul{
 list-style:none;
}
 
</style>

</head>
<body>
<div class="container">
 <div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-2" id="sidebarStyle">
  <ul class="list-group">
   <li><a href="new_book_chapter.jsp" class="list-group-item ">New Book Chapter</a></li>
   <li><a href="new_conf_presentation.jsp" class="list-group-item list-group-item-action">New Conference Presentation</a></li>
   <li><a href="new_conference_proceeding.jsp" class="list-group-item list-group-item-action">New Conference Proceeding</a></li>
   <li><a href="new_journal.jsp" class="list-group-item list-group-item-action">New Journal</a></li>
   <li><a href="new_patents.jsp" class="list-group-item list-group-item-action">New Patents</a></li>
   <li><a href="new_tech_rep.jsp" class="list-group-item list-group-item-action active">New Technical Reports</a></li>
   <li><a href="new_book.jsp" class="list-group-item list-group-item-action">New Books</a></li>
   
  </ul>
  </div>
  <div class="col-md-7">

	<form method="get">

		<table class="form-group">

			<tr>
				<td>Faculty</td>
				<td><input type="text" class="form-control" required="on"
					name="faculty"></td>
			</tr>
			<tr>
				<td>Deptt.</td>
				<td><select class="form-control" name="deptt">
						<option value="cse">CSE</option>
						<option value="ece">ECE</option>
						<option value="me">ME</option>
						<option value="cvu">CVU</option>
				</select></td>
			</tr>

			<tr>
				<td>Title of Technical Report</td>
				<td><input type="text" class="form-control" required="on"
					name="title"></td>
			</tr>

			<tr>
				<td>Year</td>
				<td><select class="form-control" name="year">
						<%
							for (int i = Calendar.getInstance().get(Calendar.YEAR); i >= 1980; i--) {
						%>
						<option value="<%=i%>"><%=i%></option>
						<%
							}
						%>
				</select></td>
			</tr>

			<tr>
				<td>Month in which published</td>
				<td><select class="form-control" name="month_published">
						<%
							String[] months = new String[] { "January", "Feburary", "March", "April", "May", "June", "July", "August",
									"September", "October", "November", "December" };
							for (int i = 0; i < months.length; i++) {
						%>
						<option value="<%=months[i]%>"><%=months[i]%></option>
						<%
							}
						%>
				</select></td>
			</tr>

			<tr>
				<td>Date</td>
				<td><input type='text' name="date"></td>
			</tr>

			<tr>
				<td>Remarks</td>
				<td><input type="text" name="remarks" class="form-control"></td>
			</tr>

			<tr>
				<td><button type="reset" class="form-control">Reset</button></td>
				<td><button type="submit" class="form-control">Submit</button></td>
			</tr>


		</table>

	</form>
	 </div>
  <div class="col-md-1"></div>
  
 </div>
</div>
	

</body>
</html>