package com.model;

public class ProjectApplicationModel {
    private int applicationId;
    private int projectId;
    private int amount;
    private int expectedCompletionTime;
    private String proposal;
    private int freelancerId;

    // Constructors
    public ProjectApplicationModel() {
    }

    // Getters and setters
    public int getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(int applicationId) {
        this.applicationId = applicationId;
    }

    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getExpectedCompletionTime() {
        return expectedCompletionTime;
    }

    public void setExpectedCompletionTime(int expectedCompletionTime) {
        this.expectedCompletionTime = expectedCompletionTime;
    }

    public String getProposal() {
        return proposal;
    }

    public void setProposal(String proposal) {
        this.proposal = proposal;
    }

    public int getFreelancerId() {
        return freelancerId;
    }

    public void setFreelancerId(int freelancerId) {
        this.freelancerId = freelancerId;
    }
}
