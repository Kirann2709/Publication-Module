
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../resources/styles/css/bootstrap.css">
<link rel="stylesheet" href="../resources/styles/css/w3.css">
<title>Faculty Home</title>
<style>
.container {
	width: 100%;
}
.borderless {
	border-bottom: 0 none;
	border-top: none;
	border-left:0;
	border-right:0;
	background: #f28430;
	font-size:medium;
	font-weight: bold;
}
ul {
	list-style: none;
}
#sidebarStyle{
 background: #f28430;
}
</style>
</head>
<input type="hidden" id="refreshed" value="no">
<script type="text/javascript">
	onload = function() {
		var e = document.getElementById("refreshed");
		if (e.value == "no")
			e.value = "yes";
		else {
			e.value = "no";
			location.reload();
		}
	}
</script>
<body>
<%
String sid  = (String) request.getSession(false).getAttribute("sid");
if(null==sid){
	response.sendRedirect("../account/access_denied.jsp");
}
System.out.println(sid);
%>
<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-md-2" id="sidebarStyle">
				 	<ul class="list-group">
				 	<li  class="list-group-item borderless"><a href="../account/logout.jsp">Logout</a></li>
				 	<li class="list-group-item borderless">Add New Data
						<ul class="list-group">
							<li><a href="../new/new_book_chapter.jsp" class="list-group-item list-group-item-action borderless">New Book
									Chapter</a></li>
							<li><a href="../new/new_conf_presentation.jsp"
								class="list-group-item list-group-item-action borderless">New
									Conference Presentation</a></li>
							<li><a href="../new/new_conference_proceeding.jsp"
								class="list-group-item list-group-item-action borderless">New
									Conference Proceeding</a></li>
							<li><a href="../new/new_journal.jsp"
								class="list-group-item list-group-item-action borderless">New Journal</a></li>
							<li><a href="../new/new_patents.jsp"
								class="list-group-item list-group-item-action borderless">New Patents</a></li>
							<li><a href="../new/new_tech_rep.jsp"
								class="list-group-item list-group-item-action borderless">New Technical
									Reports</a></li>
							<li><a href="../new/new_book.jsp"
								class="list-group-item list-group-item-action borderless">New Books</a></li>
						</ul>
						</li>
						<li class="list-group-item borderless">View
						 <ul class="list-group">
							<li><a href="view/view_book_chapter.jsp" class="list-group-item list-group-item-action  borderless">View Book
									Chapter</a></li>
							<li><a href="view/view_conf_presentation.jsp"
								class="list-group-item list-group-item-action borderless">View
									Conference Presentation</a></li>
							<li><a href="view/view_conference_proceeding.jsp"
								class="list-group-item list-group-item-action borderless">View
									Conference Proceeding</a></li>
							<li><a href="view/view_journal.jsp"
								class="list-group-item list-group-item-action borderless">View Journal</a></li>
							<li><a href="view/view_patents.jsp"
								class="list-group-item list-group-item-action borderless">View Patents</a></li>
							<li><a href="view/view_tech_rep.jsp"
								class="list-group-item list-group-item-action borderless">View Technical
									Reports</a></li>
							<li><a href="view/view_book.jsp"
								class="list-group-item list-group-item-action borderless">View Books</a></li>
						</ul>
						</li>
						</ul>
			</div>
			<div class="col-md-10"></div>
			<h2>Faculty Home</h2>
		</div>
	</div>
</body>
</html>