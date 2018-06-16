package com.zmj.wine.utils;

/**
 * Created by jackiechan on 2018/2/2/??10:33
 */
public class PayConfigUtil {
    public static String APP_ID = "wx632c8f211f8122c6";
    public static String MCH_ID = "1497984412";
    public static String API_KEY = "sbNCm1JnevqI36LrEaxFwcaT0hkGxFnC";
    public static String UFDOOER_URL = "https://api.mch.weixin.qq.com/pay/unifiedorder";
    //下面网址地址需要根据项目填写，比如放在阿里云中的项目,/payment/result是ResultServlet中的注解，会返回结果
    public static String NOTIFY_URL = "http://pic.chenjunbo.xin/payment/result";
    public static String CREATE_IP = "114.242.26.51";
}
