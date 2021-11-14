package com.examination.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.examination.entities.Answer;

public class AnswerDao {

	private SessionFactory factory;

	public AnswerDao(SessionFactory factory) {
		this.factory = factory;
	}
	
	public boolean saveAnswer(Answer answer) {
		boolean f = false;
		
		try {
			Session session = this.factory.openSession();
			Transaction tx = session.beginTransaction();
			
			session.save(answer);
			
			tx.commit();
			session.close();
			
			f = true;
			
		} catch (Exception e) {
			e.printStackTrace();
			f = false;
		}
		return f;
	}
	
	public List<Answer> getAllAnswers() {
		Session s = this.factory.openSession();
		Query query = s.createQuery("from Answer");
		List<Answer> list1 = query.list();
		return list1;
	}
	
}
