package com.zmj.wine.entity;

public class Shoppingcart {
    private Integer cartId;

    private Integer userId;

    private String cartName;

    private Integer cartPrice;

    private Integer cartDiscounts;

    private Integer cartCount;

    private String cartImg;

    public Integer getCartId() {
        return cartId;
    }

    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getCartName() {
        return cartName;
    }

    public void setCartName(String cartName) {
        this.cartName = cartName == null ? null : cartName.trim();
    }

    public Integer getCartPrice() {
        return cartPrice;
    }

    public void setCartPrice(Integer cartPrice) {
        this.cartPrice = cartPrice;
    }

    public Integer getCartDiscounts() {
        return cartDiscounts;
    }

    public void setCartDiscounts(Integer cartDiscounts) {
        this.cartDiscounts = cartDiscounts;
    }

    public Integer getCartCount() {
        return cartCount;
    }

    public void setCartCount(Integer cartCount) {
        this.cartCount = cartCount;
    }

    public String getCartImg() {
        return cartImg;
    }

    public void setCartImg(String cartImg) {
        this.cartImg = cartImg == null ? null : cartImg.trim();
    }
}