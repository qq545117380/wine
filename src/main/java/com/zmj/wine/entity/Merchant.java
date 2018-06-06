package com.zmj.wine.entity;

public class Merchant {
    private Integer mtId;

    private String mtName;

    private String mtUser;

    private String mtMobile;

    private String mtType;

    private String mtNotes;

    public Integer getMtId() {
        return mtId;
    }

    public void setMtId(Integer mtId) {
        this.mtId = mtId;
    }

    public String getMtName() {
        return mtName;
    }

    public void setMtName(String mtName) {
        this.mtName = mtName == null ? null : mtName.trim();
    }

    public String getMtUser() {
        return mtUser;
    }

    public void setMtUser(String mtUser) {
        this.mtUser = mtUser == null ? null : mtUser.trim();
    }

    public String getMtMobile() {
        return mtMobile;
    }

    public void setMtMobile(String mtMobile) {
        this.mtMobile = mtMobile == null ? null : mtMobile.trim();
    }

    public String getMtType() {
        return mtType;
    }

    public void setMtType(String mtType) {
        this.mtType = mtType == null ? null : mtType.trim();
    }

    public String getMtNotes() {
        return mtNotes;
    }

    public void setMtNotes(String mtNotes) {
        this.mtNotes = mtNotes == null ? null : mtNotes.trim();
    }
}