<!DOCTYPE html>

<!-- saved from url=(0032)http://order.gjw.com/login/login -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <#--需要添加base-->
	<#assign base=request.contextPath />
    <base id="base" href="${base}">
    <title>用户登录 - 购酒网</title>
    <link href="${base}/loginFiles/base.css" rel="stylesheet" type="text/css">
	<link href="${base}/loginFiles/gl.css" rel="stylesheet" type="text/css">
	<link href="${base}/loginFiles/login_gl.css" rel="stylesheet" type="text/css">
	<link href="${base}/loginFiles/login.css" rel="stylesheet" type="text/css">
	<link href="${base}/loginFiles/jquery.thickbox.css" rel="stylesheet" type="text/css">
	<script src="${base}/loginFiles/hm.js.下载"></script>
	<script src="${base}/loginFiles/hm.js(1).下载"></script>
	<script src="${base}/loginFiles/jquery-1.7.1.min.js.下载" type="text/javascript"></script>

    <script src="${base}/loginFiles/jquery.thickbox.js.下载" type="text/javascript"></script>
    <script src="${base}/loginFiles/jquery.form.js.下载" type="text/javascript"></script>
    <script src="${base}/loginFiles/Login.js.下载"></script>
	<script type="text/javascript" async="async" charset="utf-8" src="${base}/loginFiles/userinfo.php"></script>
	<script type="text/javascript" async="async" charset="utf-8" src="${base}/loginFiles/zh_cn.js.下载" data-requiremodule="lang"></script>
	<script type="text/javascript" async="async" charset="utf-8" src="${base}/loginFiles/chat.in.js.下载" data-requiremodule="chatManage"></script>
	<script type="text/javascript" async="async" charset="utf-8" src="${base}/loginFiles/mqtt31.js.下载" data-requiremodule="MQTT"></script>
	<script type="text/javascript" async="async" charset="utf-8" src="${base}/loginFiles/mqtt.chat.js.下载" data-requiremodule="Connection"></script></head>
	<script type="text/javascript" src="${base}/js/jquery-1.4.2.js"></script>

<body rlt="1" style=""><div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
		<div class="header">
			<div class="mid">
				<a href="http://www.gjw.com/" class="logo">
					<img src="${base}/loginFiles/logo1.jpg" alt="购酒网">
				</a>
				<div class="fr login_line">
					您好，欢迎光临购酒网！
					<!--<a href="#" class="blue">请登录</a>-->
					<a href="http://www.gjw.com/help/show.htm"><i class="icon set"></i>帮助</a>
                    <a onclick="NTKF.im_openInPageChat(&#39;kf_9250_1462524671271&#39;)" rel="nofollow" class="red" href="http://order.gjw.com/login/login#"><i class="icon service">
                </i>在线客服</a>
				</div>
			</div>
		</div>
		<div class="content">
			<div class="mid">
				<form class="login_box" name="login_form" id="login_form">
					<input name="hifbackurl" type="hidden" id="hifbackurl" value="http://order.gjw.com/UserCenter/MyOrder.html">
                <input type="hidden" value="0" class="prevIndex" name="prevIndex2">
                <input type="hidden" id="backbbsurl" name="backbbsurl">
                    <input type="hidden" id="backurl" value="http://order.gjw.com/UserCenter/MyOrder.html" name="backurl">
                    <div class="adBox fl">

						    <a href="http://www.gjw.com/Activity/h20180531.html" target="_blank">

                            <img alt="【购酒网】【购酒 网】618狂欢第一波" src="${base}/loginFiles/0b055450caac485ab03f335c9818b1ac.jpg" width="438" height="437">

						    </a>


					</div>
					<div class="login_inner fr">
						<div class="login_form">
							<div class="login_tit"><i class="man"></i>购酒网会员登录</div>
							<div class="text_box">
								<i for="" class="user"></i><input type="text" id="userMobile" name="userMobile" placeholder="邮箱/手机号码" class="id" data-id="帐号">
							</div>
							<div class="text_box">
								<i for="" class="pwd"></i><input type="password" id="userPassword" name="userPassword" placeholder="密码" class="password" data-id="密码">
							</div>

							<div id="loginCode" class="code" style="display:">
								<input name="imgCode" type="text" id="vocd" class="codeText" placeholder="请输入验证码">
                            <img class="codeImg" id="vcode" src="${base}/vcode.do">
								<a href="javascript:changeCode()" style="position:absolute;margin-top:1px;margin-left:10px;">看不清，换一个</a>
							</div>



							<div class="autoLogin">
								<div class="fl"><input type="checkbox" id="autologin" name="autologin">自动登录</div>
								<a href="${base}/user/find" class="fr">忘记密码</a>
							</div>
							<!--<input class="loginBtn" type="button" id="sub_button" value="登 录" onclick="submit_login_form('sub_button','user/login')">-->
							<!--<button class="loginBtn" id="sub_button" onclick="login()">登录</button>-->
							<a href="javascript:login();" class="loginBtn">登录</a>
						</div>
						<div class="dashedLine"></div>
						<div class="other_login">
							使用合作帐号登录<br>
							<a href="http://order.gjw.com/login/Default?type=qq&amp;&amp;returnurl=http://order.gjw.com/UserCenter/MyOrder.html" class="qq">
								<#--<img src="${base}/">-->
							</a>

							<a href="http://order.gjw.com/login/Default?type=ali&amp;&amp;returnurl=http://order.gjw.com/UserCenter/MyOrder.html" class="zhifubao"></a>

							<a href="http://order.gjw.com/login/Default?type=weixin&amp;&amp;returnurl=http://order.gjw.com/UserCenter/MyOrder.html" class=" weixin "></a>
						</div>
						<a class="resg" href="http://order.gjw.com/login/register">注册新帐号</a>
					</div>

				</form>
			</div>
		</div>
		<div class="footer">

            <div class="links">
            <a href="http://www.gjw.com/jituan/default.html" target="_blank">关于我们</a> <span>|</span> <a href="http://www.gjw.com/help/show-id-18.htm" target="_blank">联系我们</a> <span>|</span> <a href="http://www.gjw.com/help/show-id-19.htm" target="_blank">
            友情链接</a> <span>|</span> <a href="http://www.gjw.com/help/show-id-20.htm" target="_blank">隐私声明</a>
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

    <script type="text/javascript" src="${base}/loginFiles/ntkfstat.js.下载" charset="utf-8"></script>
    <!--<script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?f45b9c2a3772066fdf84b38506d4920f";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
	</script>-->

<script type="text/javascript">

    function login() {
        var userMobile = $("#userMobile").val();
        var userPassword = $("#userPassword").val();
        var vcode = $("#vocd").val();
		var num = "user";
        $.post(
            "${base}/user/login",
            {"userMobile":userMobile,"userPassword":userPassword,"vcode":vcode,"num": num},
            function (data) {
                alert(data.code);
                 if (data.code == 0){
                     alert("1111");

                    window.location.href = "${base}/welcome.html";
                } else {
                    alert("手机号或密码错误");
                    alert("请重新输入手机号和密码");
                }
            }
        );

//        var ajaxTimeoutTest = $.ajax({
//            url:'user/login',  //请求的URL
//            timeout : 3000, //超时时间设置，单位毫秒
//            type : 'post',  //请求方式，get或post
//            data :{"userMobile":userMobile,"userPassword":userPassword},  //请求所传参数，json格式
//            dataType:'json',//返回的数据格式
//            success:function(data){ //请求成功的回调函数
//                alert("成功");
//                if (data.code == "0" ){
//                     alert("1111");
//                    window.location.href = "index.jsp";
//                } else {
//                    alert("手机号或密码错误");
//                    alert("请重新输入手机号和密码");
//                }
//            },
//            complete : function(XMLHttpRequest,status){ //请求完成后最终执行参数
//                if(status=='timeout'){//超时,status还有success,error等值的情况
//                    ajaxTimeoutTest.abort();
//                    alert("超时");
//                }
//            }
//        });
    }

    /*function login(){
        if($.trim($("#userMobile").val())==''	||	$.trim($("#userMobile").val())=='邮箱/手机号'){
            alert("请输入登录账户！");
            $("#userMobile").focus();
            return false;
        }
        if($.trim($("#userPassword").val())==''){
            alert("请输入登录密码！");
            $("#userPassword").focus();
            return false;
        }
        $.post("user/login",
            {
                userMobile:$("#userMobile").val(),
                userPassword:$("#userPassword").val()
            },function(data){
                if(data.code==0){
                    window.location.href = "index.jsp";
                }else{
                    alert("用户名或者密码错误");
                }
            });
    }*/
</script>
<script type="text/javascript">
    function changeCode(){
        vcode.src = "${base}/vcode.do?"+Math.random();
    }
</script>
</body></html>