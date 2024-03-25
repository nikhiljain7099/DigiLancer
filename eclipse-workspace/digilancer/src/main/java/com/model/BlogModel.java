package com.model;

public class BlogModel {
    private int dlcid;
    private String title;
    private String content;
    private String titleImage;
    private String user;


    // Getters and setters
    public int getDlcid() {
        return dlcid;
    }

    public void setDlcid(int dlcid) {
        this.dlcid = dlcid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTitleImage() {
        return titleImage;
    }

    public void setTitleImage(String titleImage) {
        this.titleImage = titleImage;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    
}
