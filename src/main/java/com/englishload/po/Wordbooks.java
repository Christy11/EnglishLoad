package com.englishload.po;

import java.util.Date;

public class Wordbooks {
    private Integer wbookId;

    private Integer userId;

    private String wname;

    private String wexpress;

    private Date wdate;

    public Integer getWbookId() {
        return wbookId;
    }

    public void setWbookId(Integer wbookId) {
        this.wbookId = wbookId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getWname() {
        return wname;
    }

    public void setWname(String wname) {
        this.wname = wname == null ? null : wname.trim();
    }

    public String getWexpress() {
        return wexpress;
    }

    public void setWexpress(String wexpress) {
        this.wexpress = wexpress == null ? null : wexpress.trim();
    }

    public Date getWdate() {
        return wdate;
    }

    public void setWdate(Date wdate) {
        this.wdate = wdate;
    }
}