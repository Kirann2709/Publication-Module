<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book Chapter</title>
<link rel="stylesheet" href="../resources/styles/css/bootstrap.css">

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

	<form>
		<table>

			<tr>
				<td>Name of Authors in the seq. as mentioned in the Book Chapter</td>
				<td><input type="text" name="nameOauthors" placeholder="Seperate all names with commas"></td>
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
				<td>Chapter No.</td>
				<td><input type="text" name="chapter_no"></td>
			</tr>
			<tr>
				<td>Chapter Title</td>
				<td><input type="text" name="chapter_title"></td>
			</tr>
			<tr>
				<td>Book Title</td>
				<td><input type="text" name="book_title"></td>
			</tr>
			<tr>
				<td>Publisher</td>
				<td><input type="text" name="publisher"></td>
			</tr>
			<tr>
				<td>International/National</td>
				<td><select name="nationality"  id="nationality" class="form-control">
						<option value="International">International</option>
						<option value="National">National</option>
				</select></td>
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
				<td><select class="form-control" name="appilcation_month">
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
				<td>Page No.</td>
				<td><input type="text" name="page_no"></td>
			</tr>
			<tr>
				<td>Book ISBN No.</td>
				<td><input type="text" name="isbn"></td>
			</tr>
			<tr>
				<td>Hyper Link</td>
				<td><input type="text" name="link"></td>
			</tr>
			<tr>
				<td>Mention if indexed in WOS/Scopus/Google Scholar/Thomson Reuter/Elsevier</td>
				<td>
				 <input type="checkbox" name="index_flag" value="WOS">WOS<br>
				 <input type="checkbox" name="index_flag" value="Scopus">Scopus<br>
				 <input type="checkbox" name="index_flag" value="Google Scholar">Google Scholar<br>
				 <input type="checkbox" name="index_flag" value="Thomson Reuter">Thomson Reuter<br>
				  <input type="checkbox" name="index_flag" value="Elsevier">Elsevier<br>
				  <input type="checkbox" name="index_flag" value="none">Not Indexed at all..<br>
				<td>
			</tr>
			<tr>
				<td>Link for Indexing</td>
				<td><input type="text" name="index_link">
				  </td>
			</tr>
			<tr>
				<td><button type="reset">Reset</button></td>
				<td><button type="submit">Submit</button></td>
			</tr>

		</table>
	</form>


</body>
</html>