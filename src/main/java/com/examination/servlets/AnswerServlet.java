package com.examination.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.examination.dao.AnswerDao;
import com.examination.entities.Answer;
import com.examination.helper.FactoryProvider;

public class AnswerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AnswerServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			String op1 = request.getParameter("op1");
			String op2 = request.getParameter("op2");
			String op3 = request.getParameter("op3");
			String op4 = request.getParameter("op4");
			String op5 = request.getParameter("op5");
			String op6 = request.getParameter("op6");
			String op7 = request.getParameter("op7");
			String op8 = request.getParameter("op8");
			String op9 = request.getParameter("op9");
			String op10 = request.getParameter("op10");
			
			Answer a = new Answer();
			a.setOp1(op1);
			a.setOp2(op2);
			a.setOp3(op3);
			a.setOp4(op4);
			a.setOp5(op5);
			a.setOp6(op6);
			a.setOp7(op7);
			a.setOp8(op8);
			a.setOp9(op9);
			a.setOp10(op10);
			
			AnswerDao adao = new AnswerDao(FactoryProvider.getFactory());
			adao.saveAnswer(a);
			
			response.sendRedirect("calculation.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
