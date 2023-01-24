package com.seller;

public class Seller extends nonRegisteredSeller{
	//Variable Declaration
	private int sellerID;
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private String confirmPassword;
	private String contactNumber;
	
	
	public Seller(int sellerID, String firstName, String lastName, String email, String password,
			String confirmPassword, String contactNumber) {
		
		this.sellerID = sellerID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.confirmPassword = confirmPassword;
		this.contactNumber = contactNumber;
		
	}


	
	
	public int getSellerID() {
		return sellerID;
	}

	public String getFirstName() {
		return firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public String getEmail() {
		return email;
	}


	public String getPassword() {
		return password;
	}


	public String getConfirmPassword() {
		return confirmPassword;
	}


	public String getContactNumber() {
		return contactNumber;
	}


}