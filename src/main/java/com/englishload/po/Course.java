package com.englishload.po;

import java.util.Date;

public class Course {
    private Integer courseId;

    private String coursename;

    private Date coursetime;

    private String teacher;

    private Integer clickrate;

    private Integer categoryId;

    private String coursecontent;

    private Integer courseduration;

    private String coursepic;

    private String courseintro;

    private Integer period;

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename == null ? null : coursename.trim();
    }

    public Date getCoursetime() {
        return coursetime;
    }

    public void setCoursetime(Date coursetime) {
        this.coursetime = coursetime;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher == null ? null : teacher.trim();
    }

    public Integer getClickrate() {
        return clickrate;
    }

    public void setClickrate(Integer clickrate) {
        this.clickrate = clickrate;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getCoursecontent() {
        return coursecontent;
    }

    public void setCoursecontent(String coursecontent) {
        this.coursecontent = coursecontent == null ? null : coursecontent.trim();
    }

    public Integer getCourseduration() {
        return courseduration;
    }

    public void setCourseduration(Integer courseduration) {
        this.courseduration = courseduration;
    }

    public String getCoursepic() {
        return coursepic;
    }

    public void setCoursepic(String coursepic) {
        this.coursepic = coursepic == null ? null : coursepic.trim();
    }

    public String getCourseintro() {
        return courseintro;
    }

    public void setCourseintro(String courseintro) {
        this.courseintro = courseintro == null ? null : courseintro.trim();
    }

    public Integer getPeriod() {
        return period;
    }

    public void setPeriod(Integer period) {
        this.period = period;
    }
}