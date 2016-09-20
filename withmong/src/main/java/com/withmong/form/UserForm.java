package com.withmong.form;

import java.util.Date;

public class UserForm {
	//사용자가 입력한것을 받기위한 value Object
	
	private String id;
	private String password;
	private String name;
	private Date birth;
	private String email;
	private String phone;
	private String gender;
	private String schoolAbility;
	private String question;
	private String answer;
	private int point;
	private String img;
	
	public UserForm() {}
	
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "UserForm [id=" + id + ", password=" + password + ", name=" + name + ", birth=" + birth + ", email="
				+ email + ", phone=" + phone + ", gender=" + gender + ", schoolAbility=" + schoolAbility + ", question="
				+ question + ", answer=" + answer + ", point=" + point + ", img=" + img + "]";
	}
	
	
}
