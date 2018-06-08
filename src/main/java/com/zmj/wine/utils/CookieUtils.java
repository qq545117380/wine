package com.zmj.wine.utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

/**
 * Cookie操作工具类
 * @author FengKuan
 *
 */
public class CookieUtils {
    public static void addCookie(HttpServletResponse resp,String name,String value) throws UnsupportedEncodingException {
        Cookie c = new Cookie(URLEncoder.encode(name, "UTF-8"), URLEncoder.encode(value, "UTF-8"));
        c.setPath("/");
        c.setMaxAge(3600);
        resp.addCookie(c);
    }
    public static String getCookie(HttpServletRequest req,String name) throws UnsupportedEncodingException {
        Cookie[] cookies = req.getCookies();
        for(Cookie c:cookies) {
            if(URLDecoder.decode(c.getName(),"UTF-8").equals(name)) {
                return URLDecoder.decode(c.getName(),"UTF-8");
            }
        }
        return "";
    }
}
