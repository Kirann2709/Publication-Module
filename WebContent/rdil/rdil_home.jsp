<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="lao" class="com.publication.impl.LoginIMPL"
		scope="page"></jsp:useBean>
	<%
		String sid = (String) request.getSession(false).getAttribute("sid");
	System.out.println(sid);	
		if (null == sid) {
			response.sendRedirect("../account/access_denied.jsp");
			return;
		}
		if (!lao.getRoleBySessionID(sid).equals("RDIL")) {
			response.sendRedirect("../account/access_denied.jsp");
			return;
		}
	%>
<a href="view_book_chapter.jsp">View Book Chapters</a>

</body>
</html>