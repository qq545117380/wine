package com.zmj.wine.utils;

import org.apache.shiro.crypto.hash.SimpleHash;

public class SystemTools {
    /**
     * 利用工厂方法完成返回结果的格式化
     * @param code
     * @param msg
     * @return
     */
    public static JsonResult formatJsonResult(int code, String msg){
        JsonResult jsonResult = new JsonResult();
        jsonResult.setCode(code);
        jsonResult.setMsg(msg);
        return jsonResult;
    }
    //使用MD5，进行密码加密
    public static String entryption(String password,String salt){
        SimpleHash simpleHash = new SimpleHash
                ("MD5", password, salt, 5);
        //获得加密好的 密文
        String hex = simpleHash.toHex();

        return hex;
    }
}
