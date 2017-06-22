<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@page import="com.publication.model.BookChapter"%>
<%@page import="com.publication.constants.FetchDepptCode"%>
<%@page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Book Chapter</title>
<link rel="stylesheet" href="../../resources/styles/css/bootstrap.css">
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

	<jsp:useBean id="dao" class="com.publication.impl.BookChapterIMPL"
		scope="page"></jsp:useBean>
	<jsp:useBean id="lao" class="com.publication.impl.LoginIMPL"
		scope="page"></jsp:useBean>
	<%
		List<BookChapter> list = dao.getAllBookChapters();
		for (BookChapter b : list) {
			System.out.println(b);
		}

		String sid = (String) request.getSession(false).getAttribute("sid");
		if (null == sid) {
			response.sendRedirect("../account/access_denied.jsp");
			return;
		}
		pageContext.setAttribute("principal", lao.getUsernameBySessionID(sid));
		System.out.println(pageContext.getAttribute("principal"));
		request.setAttribute("eList", list);
	%>
	<jsp:include page="../../common/header_view_faculty.jsp"></jsp:include>
	<div class="container">
		<div class="row">

			<div class="col-md-2" id="sidebarStyle">
				<ul class="list-group">
					<li><a href="#" class="list-group-item active">View Book
							Chapter</a></li>
				</ul>
			</div>
			<div class="col-md-10">

				<table class="table table-condensed">
					<thead>
						<th>PCN</th>
						<th>Name Of Authors</th>
						<th>Department</th>
						<th>Chapter No</th>
						<th>Chapter Title</th>
						<th>Book Title</th>
						<th>Publisher</th>
						<th>Nationality</th>
						<th>Year</th>
						<th>Month Published</th>
						<th>Month PCN Generated</th>
						<th>Page No</th>
						<th>ISBN</th>
						<th>HyperLink</th>
						<th>Index Flag</th>
						<th>Index Link</th>
						<th>Status</th>
						<th>Delete</th>
					</thead>
					<c:forEach items="${eList}" var="bookChapter">
						<c:if test="${principal == bookChapter.writtenBy}">
							<tr>
								<td><c:out value="${bookChapter.pcn}" /></td>
								<td><c:out value="${bookChapter.nameOauthors}" /></td>
								<td><c:out value="${bookChapter.deptt}" /></td>
								<td><c:out value="${bookChapter.chapterNo}" /></td>
								<td><c:out value="${bookChapter.chapterTitle}" /></td>
								<td><c:out value="${bookChapter.bookTitle}" /></td>
								<td><c:out value="${bookChapter.publisher}" /></td>
								<td><c:out value="${bookChapter.nationality}" /></td>
								<td><c:out value="${bookChapter.year}" /></td>
								<td><c:out value="${bookChapter.monthPublished}" /></td>
								<td><c:out value="${bookChapter.monthOfPCN}" /></td>
								<td><c:out value="${bookChapter.pageNo}" /></td>
								<td><c:out value="${bookChapter.isbn}" /></td>
								<td><c:out value="${bookChapter.hyperLink}" /></td>
								<td><c:out value="${bookChapter.indexFlag}" /></td>
								<td><c:out value="${bookChapter.indexLink}" /></td>
								<c:choose>
									<c:when test="${bookChapter.status==0}">
										<td>Pending</td>
									</c:when>
									<c:when test="${bookChapter.status==1}">
										<td><a>Approved by Deptt. Coordinator</td>
									</c:when>
									<c:when test="${bookChapter.status==-1}">
										<td><a>Rejected</a></td>
									</c:when>
									<c:when test="${bookChapter.status==2}">
										<td><a>Approved By RDIL</a></td>
									</c:when>
									<c:when test="${bookChapter.status==-2}">
										<td><a>Rejected By RDIL</a></td>
									</c:when>
									<c:otherwise>
										<td>Invalid</td>
									</c:otherwise>
								</c:choose>

								<c:url value="../delete/delete.jsp" var="delete">
									<c:param name="deptt" value="${bookChapter.deptt}" />
									<c:param name="chapterNo" value="${bookChapter.chapterNo}" />
									<c:param name="chapterTitle"
										value="${bookChapter.chapterTitle}" />
									<c:param name="bookTitle" value="${bookChapter.bookTitle}" />
									<c:param name="publisher" value="${bookChapter.publisher}" />
									<c:param name="isbn" value="${bookChapter.isbn}"></c:param>
								</c:url>
								<td><a href='<c:out value="${delete}" />'>Delete</a></td>
							</tr>
						</c:if>
					</c:forEach>
				</table>
			</div>

		</div>
	</div>
</body>
</html>