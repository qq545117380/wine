package com.zmj.wine.entity;

public class Coupons {
    private Integer couponsId;

    private Integer userId;

    private String unused;

    private String haveUsed;

    private String haveExpired;

    public Integer getCouponsId() {
        return couponsId;
    }

    public void setCouponsId(Integer couponsId) {
        this.couponsId = couponsId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUnused() {
        return unused;
    }

    public void setUnused(String unused) {
        this.unused = unused == null ? null : unused.trim();
    }

    public String getHaveUsed() {
        return haveUsed;
    }

    public void setHaveUsed(String haveUsed) {
        this.haveUsed = haveUsed == null ? null : haveUsed.trim();
    }

    public String getHaveExpired() {
        return haveExpired;
    }

    public void setHaveExpired(String haveExpired) {
        this.haveExpired = haveExpired == null ? null : haveExpired.trim();
    }
}