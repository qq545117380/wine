package com.zmj.wine.entity;

public class Hoarding {
    private Integer hoardingId;

    private Integer userId;

    private String hoardingName;

    private Integer hoardingPrice;

    private Integer hoardingDiscounts;

    private String hoardingImg;

    public Integer getHoardingId() {
        return hoardingId;
    }

    public void setHoardingId(Integer hoardingId) {
        this.hoardingId = hoardingId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getHoardingName() {
        return hoardingName;
    }

    public void setHoardingName(String hoardingName) {
        this.hoardingName = hoardingName == null ? null : hoardingName.trim();
    }

    public Integer getHoardingPrice() {
        return hoardingPrice;
    }

    public void setHoardingPrice(Integer hoardingPrice) {
        this.hoardingPrice = hoardingPrice;
    }

    public Integer getHoardingDiscounts() {
        return hoardingDiscounts;
    }

    public void setHoardingDiscounts(Integer hoardingDiscounts) {
        this.hoardingDiscounts = hoardingDiscounts;
    }

    public String getHoardingImg() {
        return hoardingImg;
    }

    public void setHoardingImg(String hoardingImg) {
        this.hoardingImg = hoardingImg == null ? null : hoardingImg.trim();
    }
}