package com.examination.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(length = 10)
	private int sId;
	private String nameS;
	private String emailS;
	private String phoneS;
	private String genderS;
	private String schoolS;
	private String result1;
	private String collegeS;
	private String result2;
	private String casteS;
	private String addressS;
	private int markS;
	
	public Student(int sId, String nameS, String emailS, String phoneS, String genderS, String schoolS, String result1,
			String collegeS, String result2, String casteS, String addressS, int markS) {
		super();
		this.sId = sId;
		this.nameS = nameS;
		this.emailS = emailS;
		this.phoneS = phoneS;
		this.genderS = genderS;
		this.schoolS = schoolS;
		this.result1 = result1;
		this.collegeS = collegeS;
		this.result2 = result2;
		this.casteS = casteS;
		this.addressS = addressS;
		this.markS = markS;
	}

	public Student(String nameS, String emailS, String phoneS, String genderS, String schoolS, String result1,
			String collegeS, String result2, String casteS, String addressS, int markS) {
		super();
		this.nameS = nameS;
		this.emailS = emailS;
		this.phoneS = phoneS;
		this.genderS = genderS;
		this.schoolS = schoolS;
		this.result1 = result1;
		this.collegeS = collegeS;
		this.result2 = result2;
		this.casteS = casteS;
		this.addressS = addressS;
		this.markS = markS;
	}


	public int getsId() {
		return sId;
	}

	public void setsId(int sId) {
		this.sId = sId;
	}

	public String getNameS() {
		return nameS;
	}

	public void setNameS(String nameS) {
		this.nameS = nameS;
	}

	public String getEmailS() {
		return emailS;
	}

	public void setEmailS(String emailS) {
		this.emailS = emailS;
	}

	public String getPhoneS() {
		return phoneS;
	}

	public void setPhoneS(String phoneS) {
		this.phoneS = phoneS;
	}

	public String getGenderS() {
		return genderS;
	}

	public void setGenderS(String genderS) {
		this.genderS = genderS;
	}

	public String getSchoolS() {
		return schoolS;
	}

	public void setSchoolS(String schoolS) {
		this.schoolS = schoolS;
	}

	public String getResult1() {
		return result1;
	}

	public void setResult1(String result1) {
		this.result1 = result1;
	}

	public String getCollegeS() {
		return collegeS;
	}

	public void setCollegeS(String collegeS) {
		this.collegeS = collegeS;
	}

	public String getResult2() {
		return result2;
	}

	public void setResult2(String result2) {
		this.result2 = result2;
	}

	public String getCasteS() {
		return casteS;
	}

	public void setCasteS(String casteS) {
		this.casteS = casteS;
	}

	public String getAddressS() {
		return addressS;
	}

	public void setAddressS(String addressS) {
		this.addressS = addressS;
	}

	public int getMarkS() {
		return markS;
	}

	public void setMarkS(int markS) {
		this.markS = markS;
	}

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Student [sId=" + sId + ", nameS=" + nameS + ", emailS=" + emailS + ", phoneS=" + phoneS + ", genderS="
				+ genderS + ", schoolS=" + schoolS + ", result1=" + result1 + ", collegeS=" + collegeS + ", result2="
				+ result2 + ", casteS=" + casteS + ", addressS=" + addressS + ", markS=" + markS + "]";
	}
	
}
