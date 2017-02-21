package com.englishload.po;

import java.util.Date;

public class Comment {
    private Integer commentId;

    private Date commentime;

    private Integer userId;

    private Integer courseId;

    private String commentext;

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Date getCommentime() {
        return commentime;
    }

    public void setCommentime(Date commentime) {
        this.commentime = commentime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getCommentext() {
        return commentext;
    }

    public void setCommentext(String commentext) {
        this.commentext = commentext == null ? null : commentext.trim();
    }
}