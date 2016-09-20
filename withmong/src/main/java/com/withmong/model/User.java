package com.withmong.model;

import java.util.Date;

public class User {

	private String id;
	private String password;
	private String name;
	private Date birth;
	private String gender;
	private String schoolAbility;
	private String question;
	private String answer;
	private int point;
	private String grade;
	private String img;
	private double sumLike;
	private String delCheck;
	
	public User() {}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getSchoolAbility() {
		return schoolAbility;
	}
	public void setSchoolAbility(String schoolAbility) {
		this.schoolAbility = schoolAbility;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public double getSumLike() {
		return sumLike;
	}
	public void setSumLike(double sumLike) {
		this.sumLike = sumLike;
	}
	public String getDelCheck() {
		return delCheck;
	}
	public void setDelCheck(String delCheck) {
		this.delCheck = delCheck;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", password=" + password + ", name=" + name + ", birth=" + birth + ", gender="
				+ gender + ", schoolAbility=" + schoolAbility + ", question=" + question + ", answer=" + answer
				+ ", point=" + point + ", grade=" + grade + ", img=" + img + ", sumLike=" + sumLike + ", delCheck="
				+ delCheck + "]";
	}
	
	
	
}
