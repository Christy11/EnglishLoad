package com.englishload.po;

public class Hearing {
    private Integer hearingId;

    private String hearingaudio;

    private String hearingtitle;

    private String hearingintro;

    private Integer hearingduration;

    public Integer getHearingId() {
        return hearingId;
    }

    public void setHearingId(Integer hearingId) {
        this.hearingId = hearingId;
    }

    public String getHearingaudio() {
        return hearingaudio;
    }

    public void setHearingaudio(String hearingaudio) {
        this.hearingaudio = hearingaudio == null ? null : hearingaudio.trim();
    }

    public String getHearingtitle() {
        return hearingtitle;
    }

    public void setHearingtitle(String hearingtitle) {
        this.hearingtitle = hearingtitle == null ? null : hearingtitle.trim();
    }

    public String getHearingintro() {
        return hearingintro;
    }

    public void setHearingintro(String hearingintro) {
        this.hearingintro = hearingintro == null ? null : hearingintro.trim();
    }

    public Integer getHearingduration() {
        return hearingduration;
    }

    public void setHearingduration(Integer hearingduration) {
        this.hearingduration = hearingduration;
    }
}