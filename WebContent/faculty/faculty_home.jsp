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

li.borderless {
	border-bottom: 0 none;
	border-top: none;
}

ul {
	list-style: none;
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
	<div class="container">
		<div class="row">

			<div class="col-md-2" id="sidebarStyle">
				
				 	<ul class="list-group">
				 	<li class="list-group-item">Add New Data
						<ul class="list-group">
							<li><a href="../new/new_book_chapter.jsp" class="list-group-item list-group-item-action">New Book
									Chapter</a></li>
							<li><a href="../new/new_conf_presentation.jsp"
								class="list-group-item list-group-item-action">New
									Conference Presentation</a></li>
							<li><a href="../new/new_conference_proceeding.jsp"
								class="list-group-item list-group-item-action">New
									Conference Proceeding</a></li>
							<li><a href="../new/new_journal.jsp"
								class="list-group-item list-group-item-action">New Journal</a></li>
							<li><a href="../new/new_patents.jsp"
								class="list-group-item list-group-item-action">New Patents</a></li>
							<li><a href="../new/new_tech_rep.jsp"
								class="list-group-item list-group-item-action">New Technical
									Reports</a></li>
							<li><a href="../new/new_book.jsp"
								class="list-group-item list-group-item-action">New Books</a></li>

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