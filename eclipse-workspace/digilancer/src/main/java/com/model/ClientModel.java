package com.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ClientModel {
	private int clientId;
    private String firstname;
    private String lastname;
    private String email;
    private String password;
    private String profileImage;
    private String companyName;
    private String about;
    private String website;
    private int totalProjectsCompleted;
    private double totalAmountSpend;
    private String createdAt;
    // Constructor
    public ClientModel() {
        // Default constructor
    }

    // Getter and Setter methods
    public int getclientId() {
        return clientId;
    }

    public void setclientId(int clientId) {
        this.clientId = clientId;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(String profileImage) {
        this.profileImage = profileImage;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public int getTotalProjectsCompleted() {
        return totalProjectsCompleted;
    }

    public void setTotalProjectsCompleted(int totalProjectsCompleted) {
        this.totalProjectsCompleted = totalProjectsCompleted;
    }

    public double getTotalAmountSpend() {
        return totalAmountSpend;
    }

    public void setTotalAmountSpend(double totalAmountSpend) {
        this.totalAmountSpend = totalAmountSpend;
    }

    public String getCreatedAt() {
        return createdAt;
    }

	public void setCreatedAt() {
		Date currentDate = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		String formattedDate = dateFormat.format(currentDate);
		this.createdAt=formattedDate;
	}
	
	public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
}
