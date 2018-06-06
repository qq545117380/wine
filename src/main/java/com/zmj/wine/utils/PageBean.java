package com.zmj.wine.utils;

import java.util.List;

public class PageBean<T> {
    private List<T> data;

    private int totalPage;

    private int currentPage;

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public PageBean() {
    }

    public PageBean(List<T> data, int totalPage, int currentPage) {
        this.data = data;
        this.totalPage = totalPage;
        this.currentPage = currentPage;
    }
}
