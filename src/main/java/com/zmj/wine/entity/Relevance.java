package com.zmj.wine.entity;

public class Relevance {
    private Integer relevanceId;

    private Integer itemId;

    private String rmName;

    private String rmImg;

    public Integer getRelevanceId() {
        return relevanceId;
    }

    public void setRelevanceId(Integer relevanceId) {
        this.relevanceId = relevanceId;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public String getRmName() {
        return rmName;
    }

    public void setRmName(String rmName) {
        this.rmName = rmName == null ? null : rmName.trim();
    }

    public String getRmImg() {
        return rmImg;
    }

    public void setRmImg(String rmImg) {
        this.rmImg = rmImg == null ? null : rmImg.trim();
    }
}