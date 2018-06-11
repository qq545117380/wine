package com.zmj.wine.controller;

import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.sun.org.apache.bcel.internal.classfile.Code;
import com.zmj.wine.dao.UserMapper;
import com.zmj.wine.dao.UsersMapper;
import com.zmj.wine.entity.User;
import com.zmj.wine.entity.Users;
import com.zmj.wine.service.UserService;
import com.zmj.wine.service.UsersService;
import com.zmj.wine.utils.JsonResult;
import com.zmj.wine.utils.SendSms;
import com.zmj.wine.utils.SystemParam;
import com.zmj.wine.utils.SystemTools;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 前端用户登录
 */
@Controller
@ResponseBody
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserMapper userDAO;
    @Resource
    private UsersMapper usersDAO;
    @Resource
    private UserService userServiceImpl;
    @Resource
    private UsersService usersServiceImpl;
    @RequestMapping("/login")
    public Object login(String userMobile, String userPassword,
                        HttpServletRequest req, String vcode,
                        HttpSession httpSession,String num){
        System.out.println("进入方法1"+vcode);
        JsonResult jsonResult = null;
        Object vcode1 = req.getSession().getAttribute("vcode");
        System.out.println(vcode1);
        try {
            if(num.equals("user")){
                userServiceImpl.login(userMobile,userPassword);
                User user = null;
                user = userDAO.selectByPrimaryKey(userMobile);
                httpSession.setAttribute("currentUser",user);
            }else {
                usersServiceImpl.login(userMobile,userPassword);
                Users users = null;
                users = usersDAO.checkUsername(userMobile);
                httpSession.setAttribute("currentUsers",users);
            }
            jsonResult = SystemTools.formatJsonResult(SystemParam.Login.CODE_SUCCESS, SystemParam.Login.MSG_SUCCESS);
//            验证验证码
            if(vcode==null||!vcode.equals(req.getSession().getAttribute("vcode"))) {
                jsonResult = SystemTools.formatJsonResult(SystemParam.Login.CODE_FAIL_UNKNOWN_ACCOUNT, SystemParam.Login.MSG_FAIL_UNKNOWN_ACCOUNT);
                return jsonResult;
            }

        } catch (UnknownAccountException e) {
            e.printStackTrace();
            jsonResult = SystemTools.formatJsonResult(SystemParam.Login.CODE_FAIL_UNKNOWN_ACCOUNT, SystemParam.Login.MSG_FAIL_UNKNOWN_ACCOUNT);
        } catch (IncorrectCredentialsException e) {
            e.printStackTrace();
            jsonResult = SystemTools.formatJsonResult(SystemParam.Login.CODE_FAIL_INCORRECT_PASSWORD, SystemParam.Login.MSG_FAIL_INCORRECT_PASSWORD);
        }
       /* System.out.println("成功执行");*/
//        System.out.println(jsonResult);
        /*System.out.println(jsonResult.getCode());
        System.out.println(jsonResult.getMsg());*/
        return jsonResult;
    }
    @RequestMapping("/save")
    public Object save(String userMobile,String userPassword,
                            String firmPassword,HttpServletRequest req,
                                    String vcode,String checkCode,HttpSession httpSession){
        System.out.println("进入方法2"+vcode);
        //手机验证码
        String random=(String)httpSession.getAttribute("random");
        JsonResult jsonResult = null;
        Object vcode1 = req.getSession().getAttribute("vcode");
        User user = userDAO.selectByPrimaryKey(userMobile);
        if(user!=null){
            jsonResult = SystemTools.formatJsonResult(SystemParam.Login.CODE_FAIL_INCORRECT_NUMBER, SystemParam.Login.MSG_FAIL_INCORRECT_NUMBER);
        }else if(!userPassword.equals(firmPassword)){
            jsonResult = SystemTools.formatJsonResult(SystemParam.Login.CODE_FAIL_INCORRECT_VERIFY, SystemParam.Login.MSG_FAIL_INCORRECT_VERIFY);
        }else if(vcode==null||!vcode.equals(vcode1)) {
            jsonResult = SystemTools.formatJsonResult(SystemParam.Login.CODE_FAIL_INCORRECT_CODE, SystemParam.Login.MSG_FAIL_INCORRECT_CODE);
            return jsonResult;
        }else if(!random.equals(checkCode)) {
            jsonResult = SystemTools.formatJsonResult(SystemParam.Login.CODE_FAIL_INCORRECT_MOBILE, SystemParam.Login.MSG_FAIL_INCORRECT_MOBILE);
            return jsonResult;
        } else {
            userServiceImpl.save(userMobile,userPassword);
            jsonResult = SystemTools.formatJsonResult(SystemParam.Login.CODE_Register_SUCCESS, SystemParam.Login.MSG_Register_SUCCESS);
        }
        System.out.println("成功执行");
        System.out.println(jsonResult.getCode());
        return jsonResult;
    }
    //    验证
    @RequestMapping("/send")
    public Object send(String phoneNum, HttpSession httpSession){
        JsonResult jsonResult = null;
        SendSms sendSm=null;
        //生成6位随机数
        String random = Integer.toString((int)((Math.random()*9+1)*100000));
        //返回给客户端的数据
        String dataJson = "{\"code\":\""+random+"\"}";
        SendSmsResponse response = sendSm.sendSms(phoneNum,random);

        if(null!=response.getCode() && ("OK").equals(response.getCode())) {
            //请求成功，将dataJson数据返回给客户端就可以了
            System.out.println(dataJson);
        }
        /*System.out.println("短信接口返回的数据----------------");
        System.out.println("Code=" + response.getCode());
        System.out.println("Message=" + response.getMessage());*/
        httpSession.setAttribute("random",random);
        httpSession.setAttribute("phoneNum",phoneNum);
        if(response.getCode().equals("OK")){
            jsonResult = SystemTools.formatJsonResult(SystemParam.Login.CODE_Register_SUCCESS, SystemParam.Login.MSG_Register_SUCCESS);
        }
        return jsonResult;
    }
}
