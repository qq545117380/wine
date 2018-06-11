<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0039)http://order.gjw.com/login/register.htm -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <#--需要添加base-->
    <#assign base=request.contextPath />
    <base id="base" href="${base}">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户注册 - 购酒网</title>
    <link href="${base}/RegisterFiles/base.css" rel="stylesheet" type="text/css">
	<link href="${base}/RegisterFiles/gl.css" rel="stylesheet" type="text/css">
	<link href="${base}/RegisterFiles/login_gl.css" rel="stylesheet" type="text/css">
 <link href="${base}/RegisterFiles/register.css" rel="stylesheet" type="text/css">
      <link href="${base}/RegisterFiles/jquery.thickbox.css" rel="stylesheet" type="text/css">
     <script src="${base}/RegisterFiles/hm.js.下载"></script>
    <script src="${base}/RegisterFiles/hm.js(1).下载"></script>
    <script src="${base}/RegisterFiles/jquery-1.7.1.min.js.下载" type="text/javascript"></script>
  
    <script src="${base}/RegisterFiles/jquery.thickbox.js.下载" type="text/javascript"></script>
    <script src="${base}/RegisterFiles/jquery.form.js.下载" type="text/javascript"></script>


    <script src="${base}/RegisterFiles/Register.js.下载"></script>
    
    <script type="text/javascript" async="async" charset="utf-8" src="${base}/RegisterFiles/userinfo.php"></script>
    <script type="text/javascript" async="async" charset="utf-8" src="${base}/RegisterFiles/zh_cn.js.下载" data-requiremodule="lang"></script>
    <script type="text/javascript" async="async" charset="utf-8" src="${base}/RegisterFiles/chat.in.js.下载" data-requiremodule="chatManage"></script>
    <script type="text/javascript" async="async" charset="utf-8" src="${base}/RegisterFiles/mqtt31.js.下载" data-requiremodule="MQTT"></script>
    <script type="text/javascript" async="async" charset="utf-8" src="${base}/RegisterFiles/mqtt.chat.js.下载" data-requiremodule="Connection"></script></head>

    <script type="text/javascript" src="${base}/js/jquery-1.4.2.js"></script>

<body rlt="1" style=""><div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
    <div class="header">
        <div class="mid">
            <a href="http://www.gjw.com/" class="logo">
               <img src="${base}/RegisterFiles/logo1.jpg" alt="购酒网">
            </a>
            <div class="fr login_line">
                如您已有账户
                <a href="${base}/user/login1" class="blue">请登录</a>
                <a href="http://www.gjw.com/help/show.htm"><i class="icon set"></i>帮助</a>
                <a onclick="NTKF.im_openInPageChat(&#39;kf_9250_1462524671271&#39;)" rel="nofollow" class="red" href="http://order.gjw.com/login/register.htm#"><i class="icon service">
                </i>在线客服</a>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="mid">
            <div class="register_box" action="http://www.gjw.com">
                <div class="tabForm">
                    <ul class="tabForm_btn">
                        <li class="tab_active"><a href="javascript:void(0);"><i class="mobileIcon icon"></i>手机注册</a>
                            <div class="actBd">
                            </div>
                        </li> 
                    </ul>
                    <div class="formBox">
                        <form class="fl register_inner mobileForm">
                        <input type="hidden" name="backbbsurl" value="">
                        <div class="mgnAuto">
                            <div class="text_box">
                                <label for="">
                                    手机号 :</label>
                                <input type="text" id="mob" name="mob" data-id="手机号" class="phone">
                            <strong class="error"><b class="errorIcon"></b></strong></div>
                            <div class="text_box" style="margin-top: 10px;">
                                <label for="">
                                    设置密码 :</label>
                                <input type="password" id="passwordA" name="passwordA" data-id="密码" placeholder="6-20个非空格字符 " class="phonePwd">
                            <strong class="error"><b class="errorIcon"></b></strong></div>
                            <div class="text_box" style="margin-top: 10px;">
                                <label for="">
                                    确认密码 :</label>
                                <input type="password" id="passwordA2" name="passwordA2" data-id="密码" class="phonePwd">
                            </div>
                            <div class="mgTop12 codeBox">
                                <div class="text_box  codeText_s fl">
                                    <label for="">
                                        验证码 :</label>
                                    <input type="text" id="codeForMob" placeholder="输入图片验证码" name="codeForMob">
                                </div>
                                <img src="${base}/vcode.do" id="vcode" alt="" class="codePic fl virificationImg">
                                <a class="blue fl" id="replace_img" href="javascript:changeCode()">换一张</a>
                            </div>
                            <div class="text_box mgTop12">
                                <label for="">
                                    校验码 :
                                </label>
                                <button type="button" class="regCodeBtn btn" id="sendCode">
                                    获取校验码
                                </button>
                                <!--<a class="regCodeBtn btn">获取校验码</a> -->
                                <i class="mobileIcon"></i>
                                <input type="text" id="valiCode" name="valiCode" class="codeText">
                            </div>
                            <p class="xieyi">
                                点击注册，表示您同意购酒网 <a class="blue" href="http://order.gjw.com/help/show-id-47.htm" target="_blank">《服务协议》</a></p>
                            <!--<button type="submit" class="btnSubmit regBtn phoneReg">
                                注&nbsp;册</button>-->
                            <a href="javascript:register();" class="btnSubmit regBtn phoneReg">
                                注&nbsp;册
                            </a>
                        </div>
                        </form>
                       <!-- <form method="post" action="/ajax/user/register.htm?act=register" onsubmit="return false;" class="fl register_inner emailForm">
                        <input type="hidden" name="backbbsurl" value="" />
                        <div class='mgnAuto'>
                            <div class="text_box">
                                <label for="">
                                    <b class="red">*</b>邮箱 :</label>
                                <input type="text" id="email" name="email" class="email" data-id="邮箱" />
                            </div>
                            <div class="text_box ">
                                <label for="">
                                    <b class="red">*</b>设置密码 :</label>
                                <input type="password" id="passwordB" name="passwordB" data-id="密码" placeholder="6-20个非空格字符"
                                    class="emlPwd" />
                            </div>
                            <div class="text_box">
                                <label for="">
                                    <b class="red">*</b>确认密码 :</label>
                                <input type="password" id="passwordB2" name="passwordB2" data-id="密码" class="emlPwd" />
                            </div>
                            <div class="text_box mgTop12">
                                <label for="">
                                    手机号 :</label>
                                <input type="text" id="phone" name="phone" data-id="手机" />
                            </div>
                            <div class="mgTop12 codeBox">
                                <div class="text_box  codeText_s fl">
                                    <label for="">
                                        验证码 :</label>
                                    <input type="text" id="code" name="code">
                                </div>
                                <img src="/Order_Api/verifycode" alt="" class="codePic fl virificationImg">
                                <a class="blue fl" onclick="javascript:registerfun.changeCode()">换一张</a>
                            </div>
                            <p class="xieyi">
                                点击注册，表示您同意购酒网 <a class="blue" href="http://order.gjw.com/help/show-id-47.htm"
                                    target="_blank">《服务协议》</a>
                            </p>
                            <button type="submit" value="" class="btnSubmit regBtn mailReg">
                                注&nbsp;册</button>
                        </div>
                        </form>-->
                    </div>
                </div>
                
                        <a class="fl adBox" href="http://www.gjw.com/baijiu-maotai" target="_blank">
                            <img alt="【购酒网】 1:" src="${base}/RegisterFiles/8af3840c8b6c4fa5bcb96ccb4b2a6c25.jpg" width="300" height="356">
</a>
                   
                
            </div>
        </div>
    </div>
    <div class="footer">
         <div class="links">
            <a href="http://www.gjw.com/jituan/default.html" target="_blank">关于我们</a> <span>|</span> <a href="http://www.gjw.com/help/show-id-18.htm" target="_blank">联系我们</a> <span>|</span> <a href="http://www.gjw.com/help/show-id-19.htm" target="_blank">
            友情链接</a> <span>|</span> <a href="http://www.gjw.com/help/show-id-20.htm" target="_blank">隐私声明</a><span>|</span> <a href="http://www.gjw.com/help/show-id-45.htm" target="_blank">人才招聘</a>
        </div> 
       <div>
                Copyright©2009-2018 gjw.com, All Rights Reserved 购酒网(上海)供应链管理有限公司 版权所有</div>
    </div>
 

     <script type="text/javascript">
         //SY小能客服

         NTKF_PARAM = {
             siteid: "kf_9250", 	                //企业ID，为固定值，必填
             settingid: "kf_9250_1462524671271", //接待组ID，为固定值，必填kf_9250_1462522749545
             uid: "", 	                        //用户ID，未登录可以为空，但不能给null，uid赋予的值显示到小能客户端上
             uname: "", 	            //用户名，未登录可以为空，但不能给null，uname赋予的值显示到小能客户端上
             isvip: "0",                         //是否为vip用户，0代表非会员，1代表会员，取值显示到小能客户端上
             userlevel: 0	        //网站自定义会员级别，0-N，可根据选择判断，取值显示到小能客户端上
         }
    </script>

    <script type="text/javascript" src="${base}/RegisterFiles/ntkfstat.js.下载" charset="utf-8"></script>
        
<p style="display:none">
<script src="${base}/RegisterFiles/z_stat.php" language="JavaScript"></script><script src="${base}/RegisterFiles/core.php" charset="utf-8" type="text/javascript"></script><a href="http://www.cnzz.com/stat/website.php?web_id=1253416101" target="_blank" title="站长统计">站长统计</a>
</p>
<script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?f45b9c2a3772066fdf84b38506d4920f";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
</script>

<script type="text/javascript">
    function register() {
        var name = $("#mob").val();
        var password = $("#passwordA").val();
        var firmPassword = $("#passwordA2").val();
        var picCode = $("#codeForMob").val();
        var checkCode = $("#valiCode").val();
        $.post(
            "${base}/user/save",
            {"userMobile": name, "userPassword": password, "firmPassword": firmPassword, "vcode": picCode,"checkCode":checkCode},
            function (data) {
                if (data.code == 6) {
                    alert("注册");
                    window.location.href = "${base}/pageHome.html";
                }else if(data.code== 3){
                    alert("验证码错误");
                }else if(data.code== 4){
                    alert("两次密码不一致");
                }else {
                    alert("帐号已存在");
                }
            }
        );
    }
</script>

<script>
    /*function send() {
        var phoneNum = $("#mob").val();
        $.post(
            "user/send",
            {"phoneNum": phoneNum},
            function (data) {
                if (data.code == 6) {
                    alert("注册");
                }
            }
        );
    }*/


    $("#sendCode").click(function () {
        var tel = $("#mob").val();
        $.ajax({
            url: "${base}/user/send",
            data: {phoneNum: tel},
            async: true,
        });
    });
</script>
<script type="text/javascript">
    function changeCode(){
        vcode.src = "${base}/vcode.do?"+Math.random();
    }
</script>

</body></html>