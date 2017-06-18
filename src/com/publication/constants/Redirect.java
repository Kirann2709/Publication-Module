package com.publication.constants;

public class Redirect {
	
	public static String redirect(String role, boolean success){
		String url = "index.html";
		if(!success){
			return url;
		}
		switch(role){
		case "ROLE_FACULTY": url =  "faculty/faculty_home.jsp";
		break;
		case "ROLE_ADMIN": url =  "admin/admin_home.jsp";
		break;
		case "ROLE_RDIL": url =  "faculty/faculty_home.jsp";
		break;
		case "ROLE_DC_CSE": url =  "department_coord/coordinator_home.jsp";
		break;
		default:
		}
		return url;
	}

}
