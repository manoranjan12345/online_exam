package com.examination.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.examination.dao.QuestionDaoImpl;
import com.examination.entities.Question;
import com.examination.helper.FactoryProvider;

public class QuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public QuestionServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			String questionT = request.getParameter("questionT");
			String optionT1 = request.getParameter("optionT1");
			String optionT2 = request.getParameter("optionT2");
			String optionT3 = request.getParameter("optionT3");
			String optionT4 = request.getParameter("optionT4");
			String answerT = request.getParameter("answerT");
			
			Question q = new Question();
			q.setQuestionT(questionT);
			q.setOptionT1(optionT1);
			q.setOptionT2(optionT2);
			q.setOptionT3(optionT3);
			q.setOptionT4(optionT4);
			q.setAnswerT(answerT);
			
			QuestionDaoImpl qdao = new QuestionDaoImpl(FactoryProvider.getFactory());
			qdao.saveQuestion(q);
			
			response.sendRedirect("teacher.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}

}
