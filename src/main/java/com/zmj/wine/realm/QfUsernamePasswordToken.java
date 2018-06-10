package com.zmj.wine.realm;

import org.apache.shiro.authc.UsernamePasswordToken;
/**
 * @athor
 * 继承UsernamePasswordToken 类
 **/
public class QfUsernamePasswordToken extends UsernamePasswordToken {
    //登录用户的类型 属性
    private String type;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public QfUsernamePasswordToken(){

    }
    //    调用父类的构造方法
    public QfUsernamePasswordToken(String username, String password) {
        super(username, password);
    }
}
