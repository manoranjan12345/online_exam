package com.examination.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.examination.entities.Answer;
import com.examination.entities.Question;
import com.examination.entities.Student;
import com.examination.helper.FactoryProvider;

public class StudentDao {

	private SessionFactory factory;

	public StudentDao(SessionFactory factory) {
		this.factory = factory;
	}

	public boolean saveStudent(Student student) {
		boolean f = false;

		try {
			Session session = this.factory.openSession();
			Transaction tx = session.beginTransaction();

			session.save(student);

			tx.commit();
			session.close();

			f = true;

		} catch (Exception e) {
			e.printStackTrace();
			f = false;
		}
		return f;
	}

	public List<Student> getAllStudents() {
		Session s = this.factory.openSession();
		Query query = s.createQuery("from Student");
		List<Student> list2 = query.list();
		return list2;
	}
}
