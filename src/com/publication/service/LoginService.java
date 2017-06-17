package com.publication.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.publication.constants.LoginStatus;
import com.publication.constants.Redirect;
import com.publication.dao.*;
import com.publication.impl.LoginIMPL;

/**
 * Servlet implementation class LoginService
 */
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginService() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter writer = response.getWriter();
		LoginDAO ldao = new LoginIMPL();
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String role = request.getParameter("role");
			if(username.isEmpty()|| password.isEmpty() || role.isEmpty()){
				throw new IllegalArgumentException();
			}
			LoginStatus ls = ldao.validateLogin(username, password, role);
			if (ls == LoginStatus.SUCCESS) {
				response.sendRedirect(Redirect.redirect(role, true));
			}else if (ls == LoginStatus.WRONG_PASSWORD) {
				writer.println(returnScript("Wrong password provided, try again..",Redirect.redirect(role, false)));
			}else if (ls == LoginStatus.DEACTIVATED) {
				writer.println(returnScript("Account is decativated for some reasons, to continue contact admin..",Redirect.redirect(role, false)));
			}else if(ls == LoginStatus.NO_SUCH_ACCOUNT_FOUND){
				writer.println(returnScript("No such account exits..",Redirect.redirect(role, false)));
			}
		} 
		catch (IllegalArgumentException | NullPointerException e) {
			e.printStackTrace();
			writer.println(returnScript("Blank Feilds Found","index.html"));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public String returnScript(String msg, String url) {
		return "<script type=\"text/javascript\">\n"
				+ "alert('"+msg+"');\n" + "location='"+url+"';\n"
				+ "</script>";
	}

}
