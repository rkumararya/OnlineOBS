/**
 * 
 */
package com.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

//import org.hibernate.validator.constraints.Email;
//import org.hibernate.validator.constraints.NotBlank;
//import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * @author abhay.a.tripathi
 *
 */

@Entity
@Table(name="CUSTOMER")
public class NewCustomer {
	
	@Id
	@GeneratedValue
	private int id;
	
	@NotEmpty(message = "Enter Name")
	@Column(name="firstName")
	private String firstName;
	
	@Column(name = "lastName")
	private String lastName;
	
	@DateTimeFormat(pattern="MM/dd/yyyy")
	@NotNull @Past
	@Column(name="DOB")
	private Date DOB;
	
	@Column(name="Gender")
	private int gender;
	
	@Column(name="Address")
	private String address;
	
	@Column(name="City")
	private String city;
	
	@Column(name="State")
	private String state;
	
	@Column(name="Country")
	private String country;
	
	@Email 
	@NotEmpty(message = "Cannot be Empty!")
	@Column(name="Email")
	private String email;
	
	@Column(name="Mobile")
	private String mobile;
	
	@Column(name="Login")
	private String loginName;
	
	@Column(name="Password")
	private String password;
	
	public enum Gender {
		Male, Female, Others
	}
	
	/*Declare Constructors*/
	public NewCustomer(){}
	
	
	
	public NewCustomer(int id, String firstName, String lastName, Date dOB,
			int gender, String address, String city, String state,
			String country, String email, String mobile, String loginName,
			String password) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		DOB = dOB;
		this.gender = gender;
		this.address = address;
		this.city = city;
		this.state = state;
		this.country = country;
		this.email = email;
		this.mobile = mobile;
		this.loginName = loginName;
		this.password = password;
	}



	/*Declare Getters and Setters*/

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
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

	public Date getDOB() {
		return DOB;
	}

	public void setDOB(Date dOB) {
		DOB = dOB;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
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
}
