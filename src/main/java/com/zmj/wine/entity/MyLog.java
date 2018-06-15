package com.zmj.wine.entity;

import org.springframework.format.annotation.DateTimeFormat;

public class MyLog {
    private Integer logId;

    private String logUserName;

    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private String logTime;

    public Integer getLogId() {
        return logId;
    }

    public void setLogId(Integer logId) {
        this.logId = logId;
    }

    public String getLogUserName() {
        return logUserName;
    }

    public void setLogUserName(String logUserName) {
        this.logUserName = logUserName == null ? null : logUserName.trim();
    }

    public String getLogTime() {
        return logTime;
    }

    public void setLogTime(String logTime) {
        this.logTime = logTime;
    }
}