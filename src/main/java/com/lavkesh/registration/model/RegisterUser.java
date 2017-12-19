package com.lavkesh.registration.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class RegisterUser {

	@NotEmpty
	private String firstName;

	@NotEmpty
	private String lastName;

	private String userName;

	private String password;

	private String confirmPassword;

	@NotEmpty
	@Email
	private String email;

	@NotEmpty
	private String dob;

	@NotEmpty
	private String maritalStatus;

	private String indian = "Y";

	@NotEmpty
	private String acceptTermsAndCondition;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public String getIndian() {
		return indian;
	}

	public void setIndian(String indian) {
		this.indian = indian;
	}

	public String getAcceptTermsAndCondition() {
		return acceptTermsAndCondition;
	}

	public void setAcceptTermsAndCondition(String acceptTermsAndCondition) {
		this.acceptTermsAndCondition = acceptTermsAndCondition;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
}
