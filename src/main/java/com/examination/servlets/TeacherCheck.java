package com.examination.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TeacherCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TeacherCheck() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String emailT = request.getParameter("emailT");
		String passwordT = request.getParameter("passwordT");
		
		if(emailT == null || emailT.equals("") || passwordT == null || passwordT.equals("")) {
			response.sendRedirect("login.jsp");
		}else if(emailT.equals("teacher@gmail.com") && passwordT.equals("teacher")) {
			response.sendRedirect("teacher.jsp");
		}else {
			response.sendRedirect("login.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
