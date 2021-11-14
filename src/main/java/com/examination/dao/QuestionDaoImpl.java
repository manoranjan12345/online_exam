package com.examination.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.examination.entities.Question;

public class QuestionDaoImpl {

	private SessionFactory factory;
	
	public QuestionDaoImpl(SessionFactory factory) {
		this.factory = factory;
	}
	public boolean saveQuestion(Question question) {
		boolean f = false;
		try {
			Session session = this.factory.openSession();
			Transaction tx = session.beginTransaction();
			session.save(question);
			tx.commit();
			session.close();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
			f = false;
		}
		return f;
	}

	public List<Question> getAllQuestions() {
		Session s = this.factory.openSession();
		Query query = s.createQuery("from Question");
		List<Question> list = query.list();
		return list;
	}
	
}
