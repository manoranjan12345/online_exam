package com.examination.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.examination.dao.StudentDao;
import com.examination.entities.Student;
import com.examination.helper.FactoryProvider;

public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StudentServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());	
		try {
			String nameS = request.getParameter("nameS");
			String emailS = request.getParameter("emailS");
			String phoneS = request.getParameter("phoneS");
			String genderS = request.getParameter("genderS");
			String schoolS = request.getParameter("schoolS");
			String result1 = request.getParameter("result1");
			String collegeS = request.getParameter("collegeS");
			String result2 = request.getParameter("result2");
			String casteS = request.getParameter("casteS");
			String addressS = request.getParameter("addressS");
			
			Student s = new Student();
			s.setNameS(nameS);
			s.setEmailS(emailS);
			s.setPhoneS(phoneS);
			s.setPhoneS(phoneS);
			s.setGenderS(genderS);
			s.setSchoolS(schoolS);
			s.setResult1(result1);
			s.setCollegeS(collegeS);
			s.setResult2(result2);
			s.setCasteS(casteS);
			s.setAddressS(addressS);
			
			StudentDao sdao = new StudentDao(FactoryProvider.getFactory());
			sdao.saveStudent(s);	
			
			response.sendRedirect("instruction.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
