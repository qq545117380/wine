package com.zmj.wine.entity;

public class Opinion {
    private Integer opinionId;

    private String opType;

    private String opContent;

    private String opName;

    private String opAccount;

    private String opEmail;

    private String opMobile;

    public Integer getOpinionId() {
        return opinionId;
    }

    public void setOpinionId(Integer opinionId) {
        this.opinionId = opinionId;
    }

    public String getOpType() {
        return opType;
    }

    public void setOpType(String opType) {
        this.opType = opType == null ? null : opType.trim();
    }

    public String getOpContent() {
        return opContent;
    }

    public void setOpContent(String opContent) {
        this.opContent = opContent == null ? null : opContent.trim();
    }

    public String getOpName() {
        return opName;
    }

    public void setOpName(String opName) {
        this.opName = opName == null ? null : opName.trim();
    }

    public String getOpAccount() {
        return opAccount;
    }

    public void setOpAccount(String opAccount) {
        this.opAccount = opAccount == null ? null : opAccount.trim();
    }

    public String getOpEmail() {
        return opEmail;
    }

    public void setOpEmail(String opEmail) {
        this.opEmail = opEmail == null ? null : opEmail.trim();
    }

    public String getOpMobile() {
        return opMobile;
    }

    public void setOpMobile(String opMobile) {
        this.opMobile = opMobile == null ? null : opMobile.trim();
    }
}