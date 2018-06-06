package com.zmj.wine.entity;

import java.util.Date;

public class Integral {
    private Integer ihId;

    private Integer userId;

    private Integer integralId;

    private String ihType;

    private Date ihIntegralTime;

    private String ihNotes;

    public Integer getIhId() {
        return ihId;
    }

    public void setIhId(Integer ihId) {
        this.ihId = ihId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getIntegralId() {
        return integralId;
    }

    public void setIntegralId(Integer integralId) {
        this.integralId = integralId;
    }

    public String getIhType() {
        return ihType;
    }

    public void setIhType(String ihType) {
        this.ihType = ihType == null ? null : ihType.trim();
    }

    public Date getIhIntegralTime() {
        return ihIntegralTime;
    }

    public void setIhIntegralTime(Date ihIntegralTime) {
        this.ihIntegralTime = ihIntegralTime;
    }

    public String getIhNotes() {
        return ihNotes;
    }

    public void setIhNotes(String ihNotes) {
        this.ihNotes = ihNotes == null ? null : ihNotes.trim();
    }
}