package com.zmj.wine.utils;

/**
 *@athor hutao
 **/
public class SystemParam {


    /**
     *使用内部类，进行工具分类，返回用户登录的提示信息
     *
     */
    public final static class Login{

        //用户登录成功
        public static final int CODE_SUCCESS = 0;
        public static final String MSG_SUCCESS="登录成功";

        //用户登录失败，账号错误情况
        public static final int CODE_FAIL_UNKNOWN_ACCOUNT=1;
        public static final String MSG_FAIL_UNKNOWN_ACCOUNT="账号错误";

        //用户登录失败，密码错误情况
        public static final int CODE_FAIL_INCORRECT_PASSWORD = 2;
        public static final String MSG_FAIL_INCORRECT_PASSWORD="密码错误";

        //验证码
        public static final int CODE_FAIL_INCORRECT_CODE = 3;
        public static final String MSG_FAIL_INCORRECT_CODE="验证码错误";
        //两次密码不一致
        public static final int CODE_FAIL_INCORRECT_VERIFY = 4;
        public static final String MSG_FAIL_INCORRECT_VERIFY="两次密码不一致";
        //帐号已存在
        public static final int CODE_FAIL_INCORRECT_NUMBER = 5;
        public static final String MSG_FAIL_INCORRECT_NUMBER="帐号已存在";
        //用户登录成功
        public static final int CODE_Register_SUCCESS = 6;
        public static final String MSG_Register_SUCCESS="注册";
        //手机验证码错误
        public static final int CODE_FAIL_INCORRECT_MOBILE = 7;
        public static final String MSG_FAIL_INCORRECT_MOBILE="手机验证码错误";
    }
}
