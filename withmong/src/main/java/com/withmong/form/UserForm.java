package com.withmong.form;

import java.util.Date;

public class UserForm {
	//사용자가 입력한것을 받기위한 value Object
	
	private String id;
	private String password;
	private String passwordCk;
	private String name;
	private Date birth;
	private String email;
	private String phone1;
	private String phone2;
	private String phone3;
	private String gender;
	private String schoolAbility1;
	private String schoolAbility2;
	private String schoolAbility3;
	private String question;
	private String answer;
	
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
	public String getPasswordCk() {
		return passwordCk;
	}
	public void setPasswordCk(String passwordCk) {
		this.passwordCk = passwordCk;
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
	
	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}

	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getSchoolAbility1() {
		return schoolAbility1;
	}

	public void setSchoolAbility1(String schoolAbility1) {
		this.schoolAbility1 = schoolAbility1;
	}

	public String getSchoolAbility2() {
		return schoolAbility2;
	}

	public void setSchoolAbility2(String schoolAbility2) {
		this.schoolAbility2 = schoolAbility2;
	}

	public String getSchoolAbility3() {
		return schoolAbility3;
	}

	public void setSchoolAbility3(String schoolAbility3) {
		this.schoolAbility3 = schoolAbility3;
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

	@Override
	public String toString() {
		return "UserForm [id=" + id + ", password=" + password + ", passwordCk=" + passwordCk + ", name=" + name
				+ ", birth=" + birth + ", email=" + email + ", phone1=" + phone1 + ", phone2=" + phone2 + ", phone3="
				+ phone3 + ", gender=" + gender + ", schoolAbility1=" + schoolAbility1 + ", schoolAbility2="
				+ schoolAbility2 + ", schoolAbility3=" + schoolAbility3 + ", question=" + question + ", answer="
				+ answer + "]";
	}



	
	
}
