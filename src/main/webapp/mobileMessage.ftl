<!DOCTYPE html>
<!-- saved from url=(0045)http://order.gjw.com/login/MobileVirification -->
<html lang="zh">
<head>
<#--需要添加base-->
<#assign base=request.contextPath />
    <base id="base" href="${base}">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>购酒网-找回密码</title>
    <link href="http://order.gjw.com/favicon.ico" rel="shortcut icon" type="image/x-icon">
    <meta name="keywords">
    <meta name="description">
    <link rel="stylesheet" type="text/css" href="${base}/mobileMessage/swiper.css">
    <link href="${base}/mobileMessage/index.min.css" rel="stylesheet">
    <link href="${base}/mobileMessage/base.css" rel="stylesheet">
    <link href="${base}/mobileMessage/centerstyle.css" rel="stylesheet">
    <link href="${base}/mobileMessage/laypage.css" rel="stylesheet">
    <script src="${base}/mobileMessage/hm.js.下载"></script>
    <script src="${base}/mobileMessage/hm.js(1).下载"></script>
    <script type="text/javascript" async="" src="${base}/mobileMessage/dc.js.下载"></script>
    <script src="${base}/mobileMessage/jquery-1.7.1.min.js.下载"></script>

<#--<script>
    document.domain = "gjw.com";
</script>-->

    <link rel="stylesheet" href="${base}/mobileMessage/layer.css" id="layui_layer_skinlayercss" style="">
    <script type="text/javascript" async="async" charset="utf-8" src="${base}/mobileMessage/userinfo.php"></script>
    <script type="text/javascript" async="async" charset="utf-8" src="${base}/mobileMessage/zh_cn.js.下载" data-requiremodule="lang"></script>
    <script type="text/javascript" async="async" charset="utf-8" src="${base}/mobileMessage/chat.in.js.下载" data-requiremodule="chatManage"></script>
    <script type="text/javascript" async="async" charset="utf-8" src="${base}/mobileMessage/mqtt31.js.下载" data-requiremodule="MQTT"></script>
    <script type="text/javascript" async="async" charset="utf-8" src="${base}/mobileMessage/mqtt.chat.js.下载" data-requiremodule="Connection"></script></head>


<body rlt="1" style=""><div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
<!--头部s-->

<!--首页头部s-->

<!--顶部导航s-->
<div class="topNav">
    <div class="topNavbox clearfix">
        <div class="focusbtn fl">
            <img src="${base}/mobileMessage/ewms.png" width="12" height="12" alt="" original="http://www.gjw.com/Images/ewms.png"><span> 购酒网APP </span><em> ﹀</em>
            <div class="ewm">
                <span class="sanjiao">◆</span>
                <img src="${base}/mobileMessage/APP.png" original="http://order.gjw.com/image/APP.png">
            </div>
        </div>
        <ul class="navBox fr clearfix">
            <li class="loginReg" id="login"><em>Hi,请 </em><a href="http://order.gjw.com/login/login" class="login" rel="nofollow" target="_self">登录</a>/ <a href="http://order.gjw.com/login/register.htm" class="reg" rel="nofollow" target="_self">注册</a></li>
            <li class="line"></li>
            <li class="wddd navlist">
                <a href="http://order.gjw.com/UserCenter/MyOrder.html" class="force_link" rel="nofollow">我的订单</a>
            </li>
            <li class="line"></li>
            <li class="yhzx navlist">

                <a href="http://order.gjw.com/UserCenter/MyOrder.html" rel="nofollow">个人中心</a>

            </li>
            <li class="line"></li>
            <li class="zxkf navlist">
                <a onclick="NTKF.im_openInPageChat(&#39;kf_9250_1462524671271&#39;)" class="force_link" rel="nofollow">在线客服</a>
            </li>
            <li class="line"></li>

            <li class="bz navlist">
                <a href="http://www.gjw.com/news/default.htm" class="force_link" rel="nofollow">购酒公告</a>
            </li>
            <li class="line"></li>
            <li class="bz navlist">
                <a href="http://www.gjw.com/help/show.htm" class="force_link" rel="nofollow">帮助</a>
            </li>
            <li class="line"></li>
            <li class="tyj navlist">
                <a href="http://order.gjw.com/FeedBack/default.htm" class="force_link force_link_active" rel="nofollow">提意见</a>
            </li>
            <li class="line"></li>
            <li class="tel navlist">
                <a class="force_link force_link_active telNum"><em>☏</em> 400-722-1919</a>
            </li>
        </ul>
    </div>
</div>
<!--顶部导航e-->
<!--大广告s-->
<div class="topAd" id="bigimg" style="height: 80px;"><a href="http://www.gjw.com/Minisite/20180611/1508.htm" target="_blank"><img src="${base}/mobileMessage/7f07b37d61e940398f4d0b3d754e4690.jpg" alt="" original="http://img0.gjw.com/Famous/2018/0412/7f07b37d61e940398f4d0b3d754e4690.jpg"></a></div>
<!--大广告e-->
<!--图标、搜索框、购物车s-->
<div class="topItem">
    <a href="http://www.gjw.com/" class="fl topLogo">
        <img src="${base}/mobileMessage/logo1.jpg" alt="购酒网" original="http://www.gjw.com/Images/logo1.jpg">
    </a>
    <div class="fl topGif" id="topGif"><a href="http://www.gjw.com/product/item-id-7625.html" target="_blank">
        <img src="${base}/mobileMessage/093094c6ae204763b190aab9265e0f33.gif" alt="" original="http://img0.gjw.com/Famous/2018/0604/093094c6ae204763b190aab9265e0f33.gif"></a></div>
    <div class="topSearch fl">
        <div class="clearfix" id="clearsch" style=" position:absolute; z-index:12;">
            <div class="@@-container"><input type="text" @@="off" name="query" placeholder="茅台飞天" class="topSearchtxt fl" style="border-radius: 3px 0px 0px 3px;"><div class="proposal-box"><ul class="proposal-list"></ul></div><div class="topSearchbtn fl">搜索</div></div></div>
        <div class="topTags clearfix" id="Hot_search"><a href="http://www.gjw.com/baijiu-maotai/" title="茅台" class="v6_hot">茅台</a><a href="http://www.gjw.com/baijiu-wuliangye/" title="五粮液" class="v6_hot">五粮液</a><a href="http://www.gjw.com/putaojiu-lafeixilie" title="拉菲" class="v6_hot">拉菲</a><a href="http://www.gjw.com/putaojiu-benfu" title="奔富" class="v6_hot">奔富</a><a href="http://www.gjw.com/baijiu-yanghe" title="洋河" class="v6_hot">洋河</a><a href="http://www.gjw.com/putaojiu-huangweidaishu" title="黄尾袋鼠" class="v6_hot">黄尾袋鼠</a><a href="http://www.gjw.com/baijiu-jiannanchun" title="剑南春" class="v6_hot">剑南春</a><a href="http://www.gjw.com/baijiu-luzhoulaojiao" title="泸州老窖" class="v6_hot">泸州老窖</a></div>
    </div>
    <div class="topShopcar fr">
        <div class="shopcarBox">
            <a href="http://order.gjw.com/Order/Cart.html">
                <em></em>
                <span>去购物车结算</span>
                <span class="rtjt">&gt;</span>
                <div class="itemNum">4</div>
            </a>

        </div>
    </div>
</div>
<!--图标、搜索框、购物车e-->
<!--商品导航s-->
<div class="itemNav clearfix">
    <ul class="itemList fl">
        <li id="listnav">
            <a href="http://order.gjw.com/login/MobileVirification">☰ &nbsp; 全 部 分 类</a>
            <ul class="qbfl-list">
                <li class="yjxg-on">
                    <a href="http://order.gjw.com/login/MobileVirification">
                        <img src="${base}/mobileMessage/ax-icon.png" original="/Content/head/img/ax-icon.png">&nbsp;一键选购</a><em>›</em>
                    <div class="yjxg-box sec-box none" id="yijian"></div>

                </li>
                <li class="bj-on">
                    <a href="http://www.gjw.com/baijiu">
                        <img src="${base}/mobileMessage/bj-icon.png" original="/Content/head/img/bj-icon.png">&nbsp;白 酒</a><em>›</em>
                    <div class="bj-box sec-box none" id="baijiu">

                    </div>
                </li>
                <li class="ptj-on">
                    <a href="http://www.gjw.com/putaojiu">
                        <img src="${base}/mobileMessage/ptj-icon.png" original="/Content/head/img/ptj-icon.png">&nbsp;葡 萄 酒</a><em>›</em>
                    <div class="ptj-box sec-box none" id="putaojiu">

                    </div>
                </li>
                <li class="yj-on">
                    <a href="http://www.gjw.com/yangjiu">
                        <img src="${base}/mobileMessage/yj-icon.png" original="/Content/head/img/yj-icon.png">&nbsp;洋 酒</a><em>›</em>
                    <div class="yj-box sec-box none" id="yangjiu">
                    </div>
                </li>
                <li class="hj-on">
                    <a href="http://www.gjw.com/huangjiu">
                        <img src="${base}/mobileMessage/hj-icon.png" original="/Content/head/img/hj-icon.png">&nbsp;黄 酒</a><em>›</em>
                    <div class="hj-box sec-box none" id="huangjiu">

                    </div>
                </li>
                <li class="ysj-on">
                    <a href="http://www.gjw.com/qingjiu">
                        <img src="${base}/mobileMessage/ysj-icon.png" original="/Content/head/img/ysj-icon.png">&nbsp;清 酒</a><em>›</em>
                    <div class="ysj-box sec-box none" id="ys">

                    </div>
                </li>
                <li class="pj-on">
                    <a href="http://www.gjw.com/list/pijiu">
                        <img src="${base}/mobileMessage/pj-icon.png" original="/Content/head/img/pj-icon.png">&nbsp;啤 酒</a><em>›</em>
                    <div class="pj-box sec-box none" id="pijiu">

                    </div>
                </li>
                <li class="jjzb-on">
                    <a href="http://www.gjw.com/list/jiujujigengduo">
                        <img src="${base}/mobileMessage/jjzb-icon.png" original="/Content/head/img/jjzb-icon.png">&nbsp;酒具周边</a><em>›</em>
                    <div class="jjzb-box sec-box none" id="zb">
                    </div>
                </li>
                <li class="xp-on">
                    <a href="http://www.gjw.com/Search.html?Key=ALL">
                        <img src="${base}/mobileMessage/xp-icon.png" original="/Content/head/img/xp-icon.png">&nbsp;新 品</a><em>›</em>
                    <div class="jjzb-box sec-box none">
                        <div class="box-lt fl clearfix"></div>
                    </div>
                </li>
                <li class="xp-on">
                    <a href="http://www.gjw.com/qingcang/default.htm">
                        <img src="${base}/mobileMessage/qingcang.png" original="/Content/head/img/qingcang.png">&nbsp;清 仓</a><em>›</em>
                    <div class="jjzb-box sec-box none">
                        <div class="box-lt fl clearfix"></div>
                    </div>
                </li>
            </ul>
        </li>
        <li><a href="${base}/pageHome.html">首页</a></li>
        <li><a href="http://tm.gjw.com/">特卖会</a></li>
        <li><a href="http://import.gjw.com/">进口馆</a></li>
        <li><a href="http://www.gjw.com/help/caigou.htm">商家采销</a></li>
        <li><a href="http://www.gjw.com/shoucang/default.htm">高端收藏</a></li>
        <li><a href="http://www.gjw.com/Minisite/20170419/1199.htm">尾货直批</a></li>
    </ul>
    <div class="fr" id="rigft_advertisting"><a href="http://www.gjw.com/product/item-id-7460.html" target="_blank">
        <img src="${base}/mobileMessage/6a9d90cda55e4389815f5a78f37bc9c2.gif" alt="" original="http://img0.gjw.com/Famous/2018/0508/6a9d90cda55e4389815f5a78f37bc9c2.gif"></a></div>
</div>
<!--商品导航e-->
<!--首页头部e-->


<!--头部e-->
<div class="contentBody">
    <link href="${base}/mobileMessage/error.style.css" rel="stylesheet" type="text/css">
    <link href="${base}/mobileMessage/cloud.extend.css" rel="stylesheet" type="text/css">


    <div class="content w1000 fix">
        <!--主体-->
        <div class="mobile_box c09">
            <ul>
                <li><span class="error_tip">校验码已发送至您注册所用手机号码，请您收到后进行验证：</span></li>
                <li style="margin-right: 100px;">
                    请输入校验码：<input id="txtmobilecode" name="txtmobilecode" type="text" class="input100 mr10">
                    <a id="btnMobile" class="btn" href="http://order.gjw.com/login/MobileVirification#">
                        <i class="line bgc5"></i>
                    <#--<span onclick="Getcode()" class="long_red_btn pl15 pr15" style=" cursor:pointer">下一步</span>-->
                        <div style="margin-left: 390px; width: 50px;">
                            <a href="javascript:Getcode();" class="long_red_btn pl15 pr15" style="cursor:pointer">下一步</a>
                        </div>
                        <i class="line bgc5"></i>
                    </a>
                </li>
                <li>
                    还未收到短信？ <a id="againMobile" href="${base}/user/send">重新发送</a>&nbsp;（若&nbsp;<span id="scound" style=" color:Red"></span>&nbsp;还未收到短信，请重新发送!）
                </li>
            </ul>
        </div>
        <form id="form2" method="post" action="http://order.gjw.com/ajax/user/FindPassword.htm?act=mobile_again_send"> </form>
        <!--主体-->
    </div>

    <script type="text/javascript">
        function Getcode() {
            var mobileCode = $("#txtmobilecode").val();
            $.post(
                    "${base}/user/MobileMessage",
                    {"mobileCode": mobileCode},
                    function (data) {
                        /*alert(data.code);*/
                        if (data.code == 6) {
                            /*alert("登录成功");*/
                            window.location.href = "${base}/user/updatePassword";
                        } else {
                            alert("验证码错误");
                        }
                    }
            );
            /*function Getcode() {
                var mobileCode = $("#txtmobilecode").val();
                $.ajax({
                    cache: true,
                    type: "POST",
                    url: "/user/MobileMessage",
                    data: { mobileCode: mobileCode },
                    success: function (res) {
                        if (res.code==6) {
                            alert("哈哈哈哈哈哈");
                            layer.msg('验证成功', function () {
                                window.location = "/user/updatePassword";
                            });
                        } else {
                            alert("验证码错误");
                        }
                    }
                });*/

        }

    </script>
</div>

<!--尾部-s-->
<div class="v6_footer v6_clear">
    <div class="footerMid">
        <div class="footerMid_t footer_center">
            <div alt="" class="footer_tel fl png_bg">
            </div>

            <a onclick="NTKF.im_openInPageChat(&#39;kf_9250_1462524671271&#39;)" target="_blank" class="footer_serv fl" rel="nofollow">
                <img src="${base}/mobileMessage/onlineServ.png" alt="" class="png_bg" style="cursor: pointer;" original="http://www.gjw.com/Images/onlineServ.png">
            </a>
            <div class="fr qrCodeBox">
                <p class="fl">
                    超万平方米仓储体验店<br>
                    上海松江区茂盛路202弄18号<br>
                    客服邮箱：kf@goujiuwang.com<br>
                    <strong>扫描二维码，掌握一手优惠资讯</strong><br>
                </p>
                <img src="${base}/mobileMessage/qrcode_06.jpg" alt="" class="fl footer_qrCode" original="http://www.gjw.com/Images/qrcode_06.jpg">
            </div>
        </div>
        <div class="footer_link footer_center">
            <dl class="firstDl">
                <dt><b class="zhinan"></b>新手指南</dt>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-47.htm" rel="nofollow">
                        用户协议</a>
                </dd>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-42.htm" rel="nofollow">
                        常见问题</a>
                </dd>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-39.htm" rel="nofollow">
                        网站购物流程</a>
                </dd>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-48.htm" rel="nofollow">
                        会员制度</a>
                </dd>

            </dl>
            <dl>
                <dt><b class="zhinan"></b>如何付款</dt>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-4.htm" rel="nofollow">
                        如何付款</a>
                </dd>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-5.htm" rel="nofollow">
                        发票制度说明</a>
                </dd>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-43.htm" rel="nofollow">
                        电子券说明</a>
                </dd>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-53.htm" rel="nofollow">
                        虚拟账户支付</a>
                </dd>

            </dl>
            <dl>
                <dt><b class="zhinan"></b>配送方式</dt>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-8.htm" rel="nofollow">
                        配送收费标准</a>
                </dd>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-44.htm" rel="nofollow">
                        配送时间</a>
                </dd>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-7.htm" rel="nofollow">
                        货到付款支持城市</a>
                </dd>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-113.htm" rel="nofollow">
                        实体加盟服务商</a>
                </dd>

            </dl>
            <dl>
                <dt><b class="zhinan"></b>售后服务</dt>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-9.htm" rel="nofollow">
                        如何办理退换货</a>
                </dd>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-10.htm" rel="nofollow">
                        如何退换货</a>
                </dd>

                <dd>
                    <a onclick="NTKF.im_openInPageChat(&#39;kf_9250_1462524671271&#39;)" style="cursor: pointer;" rel="nofollow">联系客服</a>
                </dd>
            </dl>
            <dl>
                <dt><b class="zhinan"></b>关于我们</dt>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-12.htm" rel="nofollow">
                        了解购酒网</a>
                </dd>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-45.htm" rel="nofollow">
                        招兵买马</a>
                </dd>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-18.htm" rel="nofollow">
                        联系我们</a>
                </dd>

                <dd>
                    <a href="http://www.gjw.com/help/show-id-20.htm" rel="nofollow">
                        隐私声明</a>
                </dd>

                <dd>
                    <a href="http://order.gjw.com/linkShowList.htm">友情链接</a>
                </dd>
            </dl>
            <dl>
                <dt>合作共赢</dt>
                <dd>
                    <a href="http://www.gjw.com/Brand.htm"><font color="yellow">品牌馆</font></a>
                </dd>
                <dd>
                    <a href="http://www.gjw.com/help/caigou.htm" rel="nofollow"><font color="yellow">
                        大客户采购 new</font></a>
                </dd>
                <dd>
                    <a href="http://www.gjw.com/help/tuiguang.htm" rel="nofollow"><font color="yellow">
                        网站推广 new</font></a>
                </dd>
                <dd>
                    <a href="http://www.gjw.com/help/hezuo.htm" rel="nofollow"><font color="yellow">
                        供应商供货 new</font></a>
                </dd>
            </dl>
        </div>
    </div>
    <div class="mid_box copyright">

        <p>
            Copyright® 2009-2018 gjw.com, All Rights Reserved 上海线加下电子商务有限公司 版权所有
        </p>
        <div class="authentication">
            <a class="beian" href="http://www.miibeian.gov.cn/" rel="nofollow"></a>
            <a class="depart" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31011702000287" rel="nofollow"></a>
            <a class="gsxz" href="http://218.242.124.22:8081/businessCheck/verifKey.do?showType=extShow&amp;serial=9031000020160415220120000000584000-SAIC_SHOW_310000-20120216155829988069&amp;signData=MEQCIHdFdWHpPbko0f8zieSgVzkIGrx30wLu9nu+i+tifLCeAiBTuBq9FLb8/jjnUfw7sAmd0Fy7VubSJ3TE9MMccdyWJg==" rel="nofollow"></a>
        </div>
    </div>
</div>
<!--尾部-e-->

<!--右侧导航s-->
<div class="rightFixedBar">
    <div class="rightFixedBar_inner">
        <a id="righthyzx" href="http://order.gjw.com/UserCenter/MyOrder.html" target="_blank" class="rb_btn rb_Center" rel="nofollow">
            <div class="footer_iconBox">
                <span class="iconfont mine"></span>
            </div>
            <div class="iconBox_tips">
                <span class="tips">会员中心</span> <span class="tips_arrow">◆</span>
            </div>
        </a><a href="http://order.gjw.com/Order/Cart.html" rel="nofollow" class="rb_btn rb_Center">
        <div class="footer_iconBox">
            <span class="iconfont cart"></span> 购<br>
            物<br>
            车
        </div>
    </a>
        <div id="shopping_poppup" class="shopping_poppup" style="display: none;">
            <a class="shopping_poppup_a" href="http://order.gjw.com/Order/Cart.html" rel="nofollow">去购物车结算</a>
            <span class="shopping_poppup_onoff"></span>
            <div class="shopping_poppup_tab">
            </div>
        </div>
        <a id="rightyhq" href="http://order.gjw.com/UserCenter/MyVoucher.html" target="_blank" class="rb_btn rb_Center" rel="nofollow">
            <div class="footer_iconBox">
                <span class="iconfont gerenzhongxinyouhuiquan"></span>
            </div>
            <div class="iconBox_tips">
                <span class="tips">我的优惠券</span> <span class="tips_arrow">◆</span>
            </div>
        </a><a id="rightsc" href="http://order.gjw.com/UserCenter/MyFav.html" target="_blank" class="rb_btn rb_Center" rel="nofollow">
        <div class="footer_iconBox">
            <span class="iconfont 31shoucang"></span>
        </div>
        <div class="iconBox_tips">
            <span class="tips">我的收藏</span> <span class="tips_arrow">◆</span>
        </div>
    </a>
        <div href="" class="rb_btn rb_Center">
            <div class="footer_iconBox">
                <span class="iconfont erweima"></span>
            </div>
            <div class="iconBox_tips tips_qrcode">
                <div class="tips_imgBox">
                    <a href="http://order.gjw.com/login/MobileVirification">
                        <img src="${base}/mobileMessage/APP.png" alt="" original="http://order.gjw.com/image/APP.png">
                    </a>
                </div>
                <span class="tips_arrow">◆</span>
            </div>
        </div>

        <div href="" class="rb_btn rb_Center">
            <div class="footer_iconBox">
                <span class="iconfont zan"></span>
            </div>
            <div class="iconBox_tips tips_zan">
                <div class="tips_imgBox" id="tips_imgBox"><a href="http://www.gjw.com/product/item-id-3568.htm" target="_blank"><img src="${base}/mobileMessage/00d84c57071640e69b4fae0cccbe2cf3.jpg" alt="" original="http://img0.gjw.com/Famous/2017/0721/00d84c57071640e69b4fae0cccbe2cf3.jpg"></a></div>
                <span class="tips_arrow">◆</span>
            </div>
        </div>

        <a onclick="NTKF.im_openInPageChat(&#39;kf_9250_1462524671271&#39;)" class="rb_btn rb_Center" rel="nofollow">
            <div class="footer_iconBox">
                <span class="iconfont kefu"></span>
            </div>
            <div class="iconBox_tips">
                <span class="tips">在线客服</span> <span class="tips_arrow">◆</span>
            </div>
        </a><a href="http://order.gjw.com/FeedBack/default.htm" class="rb_btn rb_Center" style="margin-top: 70px;" rel="nofollow">
        <div class="footer_iconBox">
            <span class="iconfont edit"></span>
        </div>
        <div class="iconBox_tips">
            <span class="tips">用户反馈</span> <span class="tips_arrow">◆</span>
        </div>
    </a><a href="http://order.gjw.com/login/MobileVirification" class="rb_btn rb_Center" id="rightBar_backTop">
        <div class="footer_iconBox">
            <span class="iconfont fanhui3"></span>
        </div>
        <div class="iconBox_tips">
            <span class="tips">返回顶部</span> <span class="tips_arrow">◆</span>
        </div>
    </a>
    </div>
</div>
<!--右侧导航e-->



<style>
    .ksy {
        display:none;
    }
</style>
<script src="${base}/mobileMessage/swiper.min.js.下载"></script>
<script src="${base}/mobileMessage/jquery.lazyload.js.下载"></script>


<script src="${base}/mobileMessage/layer.js.下载"></script>
<script src="${base}/mobileMessage/Order_index.min.js.下载"></script>
<script src="${base}/mobileMessage/main.min.js.下载"></script>

<script type="text/javascript">
    //SY小能客服

    NTKF_PARAM = {
        siteid: "kf_9250", 	                //企业ID，为固定值，必填
        settingid: "kf_9250_1462524671271", //接待组ID，为固定值，必填kf_9250_1462522749545
        uid: gj_User.id, 	                        //用户ID，未登录可以为空，但不能给null，uid赋予的值显示到小能客户端上
        uname: gj_User.Name + gj_User.mob, 	            //用户名，未登录可以为空，但不能给null，uname赋予的值显示到小能客户端上
        isvip: "0",                         //是否为vip用户，0代表非会员，1代表会员，取值显示到小能客户端上
        userlevel: gj_User.levelId  	        //网站自定义会员级别，0-N，可根据选择判断，取值显示到小能客户端上
    }
</script>

<script type="text/javascript" src="${base}/mobileMessage/ntkfstat.js.下载" charset="utf-8"></script>
<script>

    $(function () {
        $("img[width!='1200'][class!='imgno']").lazyload({ threshold: 180 });
    });
</script>
<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-42350784-1']);
    _gaq.push(['_addOrganic', 'baidu', 'word']);
    _gaq.push(['_addOrganic', 'baidu', 'kw']);
    _gaq.push(['_addOrganic', 'baidu', 'wd']);
    _gaq.push(['_addOrganic', 'baidu', 'q1']);
    _gaq.push(['_addOrganic', 'baidu', 'q2']);
    _gaq.push(['_addOrganic', 'baidu', 'q3']);
    _gaq.push(['_addOrganic', 'baidu', 'q4']);
    _gaq.push(['_addOrganic', 'baidu', 'q5']);
    _gaq.push(['_addOrganic', 'baidu', 'q6']);
    _gaq.push(['_addOrganic', 'baidu', 's']);
    _gaq.push(['_addOrganic', 'm.baidu', 'word']);
    _gaq.push(['_addOrganic', 'wap.baidu', 'word']);
    _gaq.push(['_addOrganic', 'bing', 'q']);
    _gaq.push(['_addOrganic', 'soso', 'w']);
    _gaq.push(['_addOrganic', 'yodao', 'q']);
    _gaq.push(['_addOrganic', 'wap.soso.com', 'key']);
    _gaq.push(['_addOrganic', '3721', 'name']);
    _gaq.push(['_addOrganic', 'youdao', 'q']);
    _gaq.push(['_addOrganic', 'so.360.cn', 'q']);
    _gaq.push(['_addOrganic', '360so', 'q']);
    _gaq.push(['_addOrganic', '360sou', 'q']);
    _gaq.push(['_addOrganic', 'vnet', 'kw']);
    _gaq.push(['_addOrganic', 'sogou', 'query']);
    _gaq.push(['_addOrganic', 'ucweb', 'keyword']);
    _gaq.push(['_addOrganic', 'ucweb', 'word']);
    _gaq.push(['_addOrganic', '114so', 'kw']);
    _gaq.push(['_addOrganic', 'glb.uc.cn', 'keyword']);
    _gaq.push(['_addOrganic', 'so.com', 'q']);
    _gaq.push(['_setDomainName', 'gjw.com']);
    _gaq.push(['_addIgnoredRef', 'gjw.com']);
    _gaq.push(['_addIgnoredRef', 'goujiuwang.com']);
    _gaq.push(['_trackPageview']);
    _gaq.push(['_trackTrans']);
    _gaq.push(['_trackPageLoadTime']);
    (function () {
        var ga = document.createElement('script');
        ga.type = 'text/javascript';
        ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ga, s);
    })();
</script>
<p style="display: none">
    <script src="${base}/mobileMessage/z_stat.php" language="JavaScript"></script><script src="${base}/mobileMessage/core.php" charset="utf-8" type="text/javascript"></script><a href="http://www.cnzz.com/stat/website.php?web_id=1253416101" target="_blank" title="站长统计">站长统计</a>
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




</body></html>