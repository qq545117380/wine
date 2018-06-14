
<!-- saved from url=(0038)http://order.gjw.com/order/Finish.html -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!--需要添加base-->
    <#assign base=request.contextPath/>
    <base id="base" href="${base}/">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>订单结算</title>
    <meta name="keywords" content="购酒网,GJW,购酒，网上买酒,买酒网站,买酒网,白酒,红酒,洋酒">
    <meta name="description" content="购酒网是一家线上酒类零售商,在线供应白酒,红酒,葡萄酒,洋酒,黄酒,啤酒,保健酒等多品类酒水.品牌授权,渠道正规,手续完备,支持货到付款.用心卖好酒.">
    <meta property="qc:admins" content="105166734767276375">
    <meta property="wb:webmaster" content="8ad79d8293d7cb6d">
    <!--<base target="_blank">-->
    <link rel="shortcut icon" href="http://www.gjw.com/favicon.ico">
    <link rel="icon" href="http://www.gjw.com/favicon.ico" type="image/ico">
    <link href="${base}/orderSettle/main.min.css" rel="stylesheet" type="text/css">
    <link href="${base}/orderSettle/cart.style.css" rel="stylesheet">
    <script type="text/javascript" src="${base}/js/jquery-3.3.1.js"></script>
    <script src="${base}/orderSettle/hm.js.下载"></script><script src="${base}/orderSettle/hm.js(1).下载"></script><script type="text/javascript" async="" src="${base}/orderSettle/ga.js.下载"></script><script src="${base}/orderSettle/jquery-1.7.1.min.js.下载"></script>
    <script>
        document.domain = "gjw.com";
        </script>
      <script src="${base}/orderSettle/layer.js.下载"></script><link rel="stylesheet" href="${base}/orderSettle/layer.css" id="layui_layer_skinlayercss" style="">
   <script src="${base}/orderSettle/main.min.js.下载"></script>
     <style type="text/css">
         #Orderpay
         {
             color: #fff;
         }
        .filshadow
        {
            background: rgba(255,255,255,0.8);
            display: none;
            position: fixed;
            width: 100%;
            height: 100%;
            z-index: 999;
            top: 0;
            left: 0;
        }
        .s-ewm
        {
            position: fixed;
            z-index: 9999;
            top: 50%;
            left: 45%;
            background: #FFFFFF;
            width: 460px;
            height: 419px;
            margin-left: -230px;
            margin-top: -209px;
            border: 8px solid #B2B2B2;
            display: none;
        }
        .move
        {
            position: absolute;
            right: -280px;
            top: -5px;
            background: url(/Order/v1/UserCenter/img/sj.png);
            width: 290px;
            height: 425px;
            transition: all 1S;
            opacity: 0;
        }
        
        .mohu
        {
            width: 100%;
            height: 999px;
            filter: blur(3px);
            -webkit-filter: blur(3px);
            -ms-filter: blur(3px);
            filter: progid:DXImageTransform.Microsoft.Blur(pixelRadius=3,MakeShadow=false); /*  IE6~IE9  */
        }
        .ewmtitle
        {
            height: 51px;
            width: 385px;
            float: left;
            background: #C81623;
            color: white;
            line-height: 51px;
            padding-left: 15px;
            font-size: 20px;
            display: inline-block;
        }
        .delxx
        {
            width: 60px;
            height: 51px;
            font-size: 40px;
            display: inline-block;
            background: #C81623;
            color: white;
            line-height: 47px;
            text-align: center;
            vertical-align: top;
            cursor: pointer;
            float: left;
        }
        .smzf
        {
            height: 67px;
            color: #323232;
            font-size: 23px;
            line-height: 94px;
            text-align: center;
            font-family: "微软雅黑";
        }
        .ewm
        {
            width: 188px;
            height: 188px;
            background: #CCCCCC;
            margin: 0 auto;
        }
        .zfcg
        {
            height: 61px;
            color: #323232;
            font-size: 12px;
            line-height: 30px;
            text-align: center;
            margin: 0 auto;
            width: 400px;
            border-bottom: 1px solid #C6C6C6;
        }
        .qtzf
        {
            color: #6E6E6E;
            font-size: 12px;
            line-height: 51px;
            text-align: center;
            cursor: pointer;
        }
        .s-ewmtit
        {
            width: 100%;
            height: 51px;
        }
    </style>
</head>
<body rlt="1" style="">


    <div class="topBar" id="topBar">
        <div class="topBarCon w990">
            <div class="topBarFl fl">
                <ul>

                    <li><span>欢迎来到购酒网！</span></li> 
                    <li><a href="javascript:void(0)" class="cd5">不见⊙Д⊙不散</a>&nbsp;&nbsp;<a href="Javascript:Exit()">退出</a>&nbsp;&nbsp;</li>

                </ul>
            </div>
            <div class="miniMenu fr">
                <ul>
                    <li class="m1"><a class="cart-a" href="http://order.gjw.com/order/Cart.html" rel="nofollow"><b></b>购物车<strong id="head_cart_no">0</strong>件<u></u></a>
                        <div class="mini-cart hide" style="display: none;">
                            <div class="no-list hide">
                                您的购物车中暂时没有商品。
                            </div>
                            <div class="cart-list" id="head_cart">
                                <span class="lineHeight_30">您的购物车中暂时没有商品。</span>
                            </div> 
                        </div>
                    </li>
                    <li class="m2"><a href="http://order.gjw.com/UserCenter/MyOrder.html" rel="nofollow">我的订单</a></li>
                    <li class="m3"><a class="user-a" href="http://order.gjw.com/UserCenter/MyOrder.html" rel="nofollow">用户中心<u></u></a>
                    </li>
                      <li class="m4"><a href="http://www.gjw.com/help/show.htm" rel="nofollow">
                    帮助</a></li>
                    <li class="m55"><a href="http://order.gjw.com/FeedBack/default.htm" rel="nofollow">
                    提建议</a></li>
                    <li class="m66"><a href="http://weibo.com/320101212" rel="nofollow">微博</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="check_wrap">
        <div class="check_header botShodow">
            <a href="http://www.gjw.com/" title="购酒网">
                <img src="${base}/orderSettle/hd_logo.jpg" alt="购酒网"></a> <span style="position: relative;"><span class="logoNextText">结算页</span> </span>
            <div id="step" class="step3">
            </div>
        </div>
    </div>
    <div class="checkStand">
        <div class="checkStand_inner">

            <div class="bandBox">
                <table class="fovBox">
                    <tbody>
                        <tr>
                            <th>订单号
                            </th>
                            <th>获得积分
                            </th>
                            <th>支付方式
                            </th>
                            <th>支付金额
                            </th>
                        </tr>
                        <tr>
                            <td>
                                <a href="http://order.gjw.com/UserOrder/OrderDetail-410468.html" id="ANumber0" class="blue" target="_blank">
                                    872796716</a>
                            </td>
                            <td>-
                            </td>
                            <td class="payType">支付宝</td>
                            <td>
                                <b class="red">${sumPrice}</b>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="order" style="display: none;">
                    <p>
                        <!-- <strong>订单提交成功，请您尽快付款！订单号:54654564564</strong><br/>-->
                        请您在订单提交后<span class="orange">24小时</span>内完成支付，否则订单会自动取消!4
                    </p>
                    <!--<div class="order_total">
                                应付金额<b>949.00</b>元
                            </div>-->
                </div>

                <div class="payItem">
                    <div class="fl left">
                        支付平台
                    </div>
                    <ul class="fl mgn_bottom_10" id="flatPay">
                        <li index="4">
                            <input type="radio" name="bank" id="zhifubao" style="display: none;">
                            <label class="zhifubao active" data-value="支付宝" data-name="4">
                                <b>
                                    <img src="${base}/orderSettle/zhifubao.png" style="margin-left:-115px;margin-top:-25px;">
                                </b>
                            </label>
                        </li>
                        <li>
                            <input type="radio" name="bank" id="wechat" style="display: none;">
                            <label class="wechat" data-value="微信支付">
                                <b>
                                </b>
                            </label>
                            <img src="${base}/orderSettle/weixin.png" style="margin-left:-134px;margin-top:-32px;">
                        </li>
                    </ul>
                </div>
                <div class="payItem">


                    <a id="OrderPay" class="payNow" href="http://order.gjw.com/alipay/Default?action=0" style="cursor: pointer; display: block;">立即付款</a><input type="hidden" id="hifOrderID" name="hifOrderID" value="346061"><input type="hidden" id="hifPayWayChildID" name="hifPayWayChildID" value="4">
                </div>
                <p class="tixing">
                    温馨提示：<br>
                    1.您的订单将在成功提交后的24至48小时内发货。<br>
                    2.您可以在订单中心内查看订单的物流信息。<br>
                    3.请您在收货时开箱验货，如果发现商品损毁或与货单所列不符，请及时与我们取得联系。<br>
                    拨打客服热线：400-722-1919 <a href="http://order.gjw.com/news/show-id-9.htm">退换货政策&gt;&gt;</a><br>
                </p>
            </div>

        </div>
    </div>
    <!--主体-->
    <!--弹出层-->
    <div class="cart_shadow" style="display: none; height: 970px;">
        <div class="cart_afterpay">
            <div class="fix fs16 bbd6 pb5">
                <h2 class="fl c3">付款遇到问题</h2>
                <span id="cartClose" class="fr c01 cur">× 关闭</span>
            </div>
            <p class="mt10 mb15 c6">
                付款完成前请不要关闭此窗口。完成付款后请根据你的情况点击下面的按钮：
            </p>
            <h3 class="c3">请在新开网上储蓄卡页面完成付款后再选择。</h3>
            <div class="tc mt20">
                <a href="http://order.gjw.com/UserOrder/OrderDetail-346061.htm" id="APaySuccess" class="btn tdn vm"><i class="line bgbb"></i><strong class="gray_btn cur">已完成付款</strong> <i class="line bgbb"></i></a><a class="btn ml20 tdn vm" href="http://order.gjw.com/news/show-id-9.htm"><i class="line bgbb"></i>
                    <strong class="gray_btn cur">付款遇到问题</strong> <i class="line bgbb"></i></a>
            </div>
            <p class="mt10 link_cat">
                <a href="http://order.gjw.com/purchase/ModifyPay-ID-346061.htm" id="AginChang" class="c01">返回重新选择付款方式</a>
            </p>
        </div>
    </div>


    <div class="s-ewm" id="qrcodeBox1">
        <div class="s-ewmtit">
            <span class="ewmtitle">支付0.01元 </span><span class="delxx">×</span>
        </div>
        <div class="smzf">
            微信扫码支付
        </div>
        <div class="ewm">
            <div id="wxQRCode">
                <img id="QRCodeImg" style="width:188px;height:188px;">
            </div>
        </div>
        <div class="zfcg">
            支付成功后，请进入<a target="_self" href="http://order.gjw.com/UserCenter/MyOrder.html" style="color: #ae0606">我的订单</a>查看
        </div>
        <div class="qtzf">
            使用其他支付方式&gt;
        </div>
        <div class="move">
        </div>
    </div>
    <!--弹出层-->
    <!--底部-->

    <div class="foot" id="foot">
        <img src="${base}/orderSettle/sanBao_07.gif" class="sanbao">
       <div class="links">
            <a href="http://www.gjw.com/jituan/default.html" target="_blank">关于我们</a> <span>|</span> <a href="http://www.gjw.com/help/show-id-18.htm" target="_blank">联系我们</a> <span>|</span> <a href="http://www.gjw.com/help/show-id-19.htm" target="_blank">
            友情链接</a> <span>|</span> <a href="http://www.gjw.com/help/show-id-20.htm" target="_blank">隐私声明</a>
        </div>
        <div class="copyright">
            <p>
                Copyright® 2009-2018 gjw.com, All Rights Reserved 购酒网(上海)供应链管理有限公司 版权所有
            </p>
        </div>
        <div class="authentication">
            <a class="beian" href="http://www.miibeian.gov.cn/" target="_blank"></a>
            <a class="depart" target="_blank" href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20120216155829987"></a>
        </div>

    </div>
    <script type="text/javascript"> 
    var _mvq = _mvq || []; 
    _mvq.push(['$setAccount', 'm-181296-0']); 
    _mvq.push(['$setGeneral', 'ordercreate', '', /*用户名*/ '', /*用户id*/ '410468']); 
    _mvq.push(['$logConversion']); 
    _mvq.push(['$addOrder',/*订单号*/ '872796716', /*订单金额*/ '3552']); 
    _mvq.push(['$addItem', /*订单号*/ '872796716', /*商品id*/ '644362', /*商品名称*/ '52度 剑南春 500ml', /*商品价格*/ '398', /*商品数量*/ '2', /*商品页url*/ 'http://www.gjw.com/product/item-id-644362.htm?utm_source=mediav', /*商品页图片url*/ '']); 
    _mvq.push(['$addItem', /*订单号*/ '872796716', /*商品id*/ '644363', /*商品名称*/ '52度 剑南春 1000ml', /*商品价格*/ '758', /*商品数量*/ '1', /*商品页url*/ 'http://www.gjw.com/product/item-id-644363.htm?utm_source=mediav', /*商品页图片url*/ '']); 
    _mvq.push(['$addItem', /*订单号*/ '872796716', /*商品id*/ '644364', /*商品名称*/ '【组合装】53度 茅台飞天酒（2018年产）500ml 和53度 习酒 窖藏1998 500ml', /*商品价格*/ '1998', /*商品数量*/ '1', /*商品页url*/ 'http://www.gjw.com/product/item-id-644364.htm?utm_source=mediav', /*商品页图片url*/ '']); 
  _mvq.push(['$logData']); 
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
	
	_gaq.push(['_addTrans','872796716','','3552','','','','','']);
	_gaq.push(['_addItem','872796716','644362','52度 剑南春 500ml','GJW','398','2']);
	_gaq.push(['_addItem','872796716','644363','52度 剑南春 1000ml','GJW','758','1']);
	_gaq.push(['_addItem','872796716','644364','【组合装】53度 茅台飞天酒（2018年产）500ml 和53度 习酒 窖藏1998 500ml','GJW','1998','1']);

	_gaq.push(['_trackTrans']);
	_gaq.push(['_trackPageLoadTime']);
	(function () {
	var ga = document.createElement('script'); 
	ga.type = 'text/javascript';
	ga.async = true;
	ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(ga, s);
	})();
	function _gsCallback() {
	if (window._gsTracker) {
	_gsTracker.addOrder("872796716", 3552);
	_gsTracker.addProduct("872796716", "52度 剑南春 500ml", "644362", 398, 2, "GJW");_gsTracker.addProduct("872796716", "52度 剑南春 1000ml", "644363", 758, 1, "GJW");_gsTracker.addProduct("872796716", "【组合装】53度 茅台飞天酒（2018年产）500ml 和53度 习酒 窖藏1998 500ml", "644364", 1998, 1, "GJW");
	_gsTracker.trackECom();
	}
	}
         </script>




<script type="text/javascript">
    var checkWxIsPay = function () {
        setInterval(function(){
            $.ajax({
                //提交数据的类型 POST GET
                type: "POST",
                //提交的网址
                url: "/Order_Api/GetWxPayState",
                //提交的数据
                data: { number: 872796716 },
                //返回数据的格式
                async: false,
                datatype: "json", //"xml", "html", "script", "json", "jsonp", "text".
                //在请求之前调用的函数
                success: function (data) {
                    //console.log(data.Data);
                    if (data.Success == 1) {
                        window.location.replace("http://order.gjw.com/UserCenter/MyOrder.html");
                    }
                }
            });
        },2000);
    }
    $(function () {
        //微信扫码
        $('#wechat').bind('change', function () {
            if (this.checked) {
                $('#QRCodeImg').attr("src", "http://order.gjw.com/WeiXinPay/NativePay");
                $('#qrcodeBox1').fadeIn();
                $('#OrderPay').hide();
                checkWxIsPay();
            } else {
                $('#OrderPay').show();
            }
        });
        window.bankRadio = function () {
            var $aBankRadio = $('input[name=bank]');
            var $aLabel = $('.bandBox').find('label');

            for (var i = 0; i < $aBankRadio.length; i++) {
                if ($aBankRadio[i].checked) {
                    $aLabel.eq(i).addClass('active');
                }
                (function (index) {
                    $aLabel.eq(index).bind('click', function () {
                        $aLabel.removeClass('active');
                        $(this).addClass('active');
                        $aBankRadio.attr('checked', false);
                        $aBankRadio[index].click();
                        $(".payType").html($(this).attr("data-value"));

                        //支付按钮
                        if ($aBankRadio[index].id != "wechat") {
                            $('#OrderPay').css('display', 'block');
                        }
                        return false;
                    });
                    $aBankRadio.eq(index).bind('click', function () {
                        $aLabel.removeClass('active');
                        $aLabel.eq(index).addClass('active');
                        //console.log($("input[name=bank]:checked").val());
                        //$("#hifPayWayChildID").val($("input[name=bank]:checked").val());
                    });
                })(i);
                $aBankRadio[i].style.display = 'none';
            }
        };

        bankRadio();

        $(function () {
            $(".mainbox").click(function () {
                $(this).addClass("mohu");
                $(".filshadow").css("display", "block");
                $(".s-ewm").css("display", "block");
            })
            $(".delxx").click(function () {
                $(".mainbox").removeClass("mohu");
                $(".filshadow").css("display", "none");
                $(".s-ewm").css("display", "none");

            })
            $(".ewm").mouseenter(function () {
                $(".move").css("right", "-320px");
                $(".move").css("opacity", "1");
            })
            $(".ewm").mouseleave(function () {
                $(".move").css("right", "-280px");
                $(".move").css("opacity", "0");
            })
            $(".qtzf").click(function () {
                $(".mainbox").removeClass("mohu");
                $(".filshadow").css("display", "none");
                $(".s-ewm").css("display", "none");

            })
        })



    })

</script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?f45b9c2a3772066fdf84b38506d4920f";
        var s = document.getElementsByTagName("script")[0]; 
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body></html>