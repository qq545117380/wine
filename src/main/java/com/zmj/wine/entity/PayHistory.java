package com.zmj.wine.entity;

import java.util.Date;

public class PayHistory {
    private Integer phId;

    private Date phTime;

    private String phAccount;

    private String phName;

    private Integer phMoney;

    private String phSerialNum;

    private String phNotes;

    private String phPayer;

    public Integer getPhId() {
        return phId;
    }

    public void setPhId(Integer phId) {
        this.phId = phId;
    }

    public Date getPhTime() {
        return phTime;
    }

    public void setPhTime(Date phTime) {
        this.phTime = phTime;
    }

    public String getPhAccount() {
        return phAccount;
    }

    public void setPhAccount(String phAccount) {
        this.phAccount = phAccount == null ? null : phAccount.trim();
    }

    public String getPhName() {
        return phName;
    }

    public void setPhName(String phName) {
        this.phName = phName == null ? null : phName.trim();
    }

    public Integer getPhMoney() {
        return phMoney;
    }

    public void setPhMoney(Integer phMoney) {
        this.phMoney = phMoney;
    }

    public String getPhSerialNum() {
        return phSerialNum;
    }

    public void setPhSerialNum(String phSerialNum) {
        this.phSerialNum = phSerialNum == null ? null : phSerialNum.trim();
    }

    public String getPhNotes() {
        return phNotes;
    }

    public void setPhNotes(String phNotes) {
        this.phNotes = phNotes == null ? null : phNotes.trim();
    }

    public String getPhPayer() {
        return phPayer;
    }

    public void setPhPayer(String phPayer) {
        this.phPayer = phPayer == null ? null : phPayer.trim();
    }
}