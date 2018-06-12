package com.zmj.wine.entity;

import java.io.Serializable;

public class Content implements Serializable{
    private Integer contentId;

    private String contentName;

    public Integer getContentId() {
        return contentId;
    }

    public void setContentId(Integer contentId) {
        this.contentId = contentId;
    }

    public String getContentName() {
        return contentName;
    }

    public void setContentName(String contentName) {
        this.contentName = contentName == null ? null : contentName.trim();
    }
}