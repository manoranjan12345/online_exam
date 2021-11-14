package com.examination.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Question {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(length = 10)
	private int qId;
	private String questionT;
	private String optionT1;
	private String optionT2;
	private String optionT3;
	private String optionT4;
	private String answerT;
	
	public Question(int qId, String questionT, String optionT1, String optionT2, String optionT3, String optionT4,
			String answerT) {
		super();
		this.qId = qId;
		this.questionT = questionT;
		this.optionT1 = optionT1;
		this.optionT2 = optionT2;
		this.optionT3 = optionT3;
		this.optionT4 = optionT4;
		this.answerT = answerT;
	}

	public Question(String questionT, String optionT1, String optionT2, String optionT3, String optionT4,
			String answerT) {
		super();
		this.questionT = questionT;
		this.optionT1 = optionT1;
		this.optionT2 = optionT2;
		this.optionT3 = optionT3;
		this.optionT4 = optionT4;
		this.answerT = answerT;
	}

	public Question() {
		super();
	}

	public int getqId() {
		return qId;
	}

	public void setqId(int qId) {
		this.qId = qId;
	}

	public String getQuestionT() {
		return questionT;
	}

	public void setQuestionT(String questionT) {
		this.questionT = questionT;
	}

	public String getOptionT1() {
		return optionT1;
	}

	public void setOptionT1(String optionT1) {
		this.optionT1 = optionT1;
	}

	public String getOptionT2() {
		return optionT2;
	}

	public void setOptionT2(String optionT2) {
		this.optionT2 = optionT2;
	}

	public String getOptionT3() {
		return optionT3;
	}

	public void setOptionT3(String optionT3) {
		this.optionT3 = optionT3;
	}

	public String getOptionT4() {
		return optionT4;
	}

	public void setOptionT4(String optionT4) {
		this.optionT4 = optionT4;
	}

	public String getAnswerT() {
		return answerT;
	}

	public void setAnswerT(String answerT) {
		this.answerT = answerT;
	}

	@Override
	public String toString() {
		return "Question [qId=" + qId + ", questionT=" + questionT + ", optionT1=" + optionT1 + ", optionT2=" + optionT2
				+ ", optionT3=" + optionT3 + ", optionT4=" + optionT4 + ", answerT=" + answerT + "]";
	}
	
	
	
}
