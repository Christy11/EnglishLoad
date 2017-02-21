package com.englishload.po;

public class HearingWithBLOBs extends Hearing {
    private String hearingeng;

    private String hearingch;

    public String getHearingeng() {
        return hearingeng;
    }

    public void setHearingeng(String hearingeng) {
        this.hearingeng = hearingeng == null ? null : hearingeng.trim();
    }

    public String getHearingch() {
        return hearingch;
    }

    public void setHearingch(String hearingch) {
        this.hearingch = hearingch == null ? null : hearingch.trim();
    }
}