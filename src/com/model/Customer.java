/**
 * Customer Class having getters and setters for Customer Password.
 */
package com.model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;



//import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author abhay.a.tripathi
 *
 */

public class Customer {
	
	@NotEmpty(message = "Please enter your Login Name.")
	private String loginName;

	@NotEmpty(message = "Please enter your password.")
	@Size(min = 6, max = 15, message = "Your password must between 6 and 15 characters")
	private String password;

	@NotEmpty(message = "Please confirm your password.")
	private String confirmPassword;
	
	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
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

/*	public boolean isReceiveNewsLetter() {
		return receiveNewsLetter;
	}

	public void setReceiveNewsLetter(boolean receiveNewsLetter) {
		this.receiveNewsLetter = receiveNewsLetter;
	}

	public String[] getFavLanguages() {
		return favLanguages;
	}

	public void setFavLanguages(String[] favLanguages) {
		this.favLanguages = favLanguages;
	}

	public String[] getFavFramework() {
		return favFramework;
	}

	public void setFavFramework(String[] favFramework) {
		this.favFramework = favFramework;
	}*/
}
