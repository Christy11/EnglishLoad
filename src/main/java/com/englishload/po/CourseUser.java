package com.englishload.po;

import java.util.Date;

public class CourseUser {
    private Integer courseUserId;

    private Integer userId;

    private Integer courseId;

    private Date watchdate;

    private Integer watchduration;

    public Integer getCourseUserId() {
        return courseUserId;
    }

    public void setCourseUserId(Integer courseUserId) {
        this.courseUserId = courseUserId;
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

    public Date getWatchdate() {
        return watchdate;
    }

    public void setWatchdate(Date watchdate) {
        this.watchdate = watchdate;
    }

    public Integer getWatchduration() {
        return watchduration;
    }

    public void setWatchduration(Integer watchduration) {
        this.watchduration = watchduration;
    }
}