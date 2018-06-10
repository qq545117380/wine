<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">
<!-- saved from url=(0019)http://www.gjw.com/ -->
<html lang="zh"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
 
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <#assign base=request.contextPath />
    <base id="base" href="${base}">
        <title> pageHome</title>
        <link href="http://www.gjw.com/favicon.ico" rel="shortcut icon" type="image/x-icon">
       <meta name="keywords" content="购酒网,GJW,购酒，网上买酒,买酒网站,买酒网,白酒,红酒,洋酒">
    <meta name="description" content="购酒网是一家线上酒类零售商,在线供应白酒,红酒,葡萄酒,洋酒,黄酒,啤酒,保健酒等多品类酒水.品牌授权,渠道正规,手续完备,支持货到付款.用心卖好酒.">
            <link rel="stylesheet" type="text/css" href="${base}/pageHome_files/swiper.css">
        <link href="${base}/pageHome_files/index.min.css" rel="stylesheet">
        
     <script src="${base}/pageHome_files/hm.js.下载"></script><script type="text/javascript" async="" src="${base}/pageHome_files/dc.js.下载"></script><script src="${base}/pageHome_files/jquery-1.7.1.min.js.下载"></script>
    <#--<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>-->
    <#--<script type="text/javascript" src="/js/script.js"></script>-->
        <#--<script>-->
            <#--document.domain = "gjw.com"; -->
        <#--</script>-->

    <link rel="stylesheet" href="${base}/pageHome_files/layer.css" id="layui_layer_skinlayercss" style=""><script type="text/javascript" async="async" charset="utf-8" src="${base}/pageHome_files/userinfo.php"></script><script type="text/javascript" async="async" charset="utf-8" src="${base}/pageHome_files/zh_cn.js.下载" data-requiremodule="lang"></script><script type="text/javascript" async="async" charset="utf-8" src="${base}/pageHome_files/chat.in.js.下载" data-requiremodule="chatManage"></script><script type="text/javascript" async="async" charset="utf-8" src="${base}/pageHome_files/mqtt31.js.下载" data-requiremodule="MQTT"></script><script type="text/javascript" async="async" charset="utf-8" src="${base}/pageHome_files/mqtt.chat.js.下载" data-requiremodule="Connection"></script></head>


    <body><div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
          <!--头部s--> 
        	
<!--首页头部s-->

		<!--顶部导航s-->
		<div class="topNav">
			<div class="topNavbox clearfix">
				<div class="focusbtn fl">
					<img src="${imagesPath}/ewms.png" width="12" height="12" alt="" original="${imagesPath}/ewms.png"><span> 购酒网APP </span><em> ﹀</em>
					<div class="ewm">
						<span class="sanjiao">◆</span>
						<img src="${imagesPath}/APP.png" original="${imagesPath}/APP.png">
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
		<div class="topAd" id="bigimg" style="height: 80px;"><a href="http://www.gjw.com/Minisite/20180526/1490.htm" target="_blank"><img src="${imagesPath}/4194d664d4ab408699726816ca2d9fd6.jpg" alt="" original="${imagesPath}/4194d664d4ab408699726816ca2d9fd6.jpg"></a></div>
		<!--大广告e-->
		<!--图标、搜索框、购物车s-->
		<div class="topItem">
			<a href="http://www.gjw.com/" class="fl topLogo">
                <img src="${imagesPath}/logo1.jpg" alt="购酒网" original="${imagesPath}/logo1.jpg">
            </a>
            	<div class="fl topGif" id="topGif"><a href="http://www.gjw.com/product/item-id-7064.html" target="_blank"><img src="${imagesPath}/107d6db39c6c4367a96cfb7474c779af.gif" alt="" original="${imagesPath}/107d6db39c6c4367a96cfb7474c779af.gif"></a></div>
		<div class="topSearch fl">
			<div class="clearfix" id="clearsch" style=" position:absolute; z-index:12;">
			<div class="@@-container"><input type="text" @@="off" name="query" placeholder="茅台飞天" class="topSearchtxt fl" style="border-radius: 3px 0px 0px 3px;"><div class="proposal-box"><ul class="proposal-list"></ul></div><div class="topSearchbtn fl">搜索</div></div></div>
			<div class="topTags clearfix" id="Hot_search"><a href="http://www.gjw.com/baijiu-maotai/" title="茅台" class="v6_hot">茅台</a><a href="http://www.gjw.com/baijiu-wuliangye/" title="五粮液" class="v6_hot">五粮液</a><a href="http://www.gjw.com/putaojiu-lafeixilie" title="拉菲" class="v6_hot">拉菲</a><a href="http://www.gjw.com/putaojiu-benfu" title="奔富" class="v6_hot">奔富</a><a href="http://www.gjw.com/baijiu-yanghe" title="洋河" class="v6_hot">洋河</a><a href="http://www.gjw.com/putaojiu-huangweidaishu" title="黄尾袋鼠" class="v6_hot">黄尾袋鼠</a><a href="http://www.gjw.com/baijiu-jiannanchun" title="剑南春" class="v6_hot">剑南春</a><a href="http://www.gjw.com/baijiu-luzhoulaojiao" title="泸州老窖" class="v6_hot">泸州老窖</a></div>
		</div>
            <div class="topShopcar fr">
            	<div class="shopcarBox">
            		<a href="http://order.gjw.com/order/Cart.html">
            			<em></em>
            			<span>去购物车结算</span>
            			<span class="rtjt">&gt;</span>
            			<div class="itemNum">0</div>
            		</a>
            		
            	</div>  
            </div>
		</div>
		<!--图标、搜索框、购物车e-->
		<!--商品导航s-->
		<div class="itemNav clearfix">
			<ul class="itemList fl">
				<li id="listnav">
					<a href="http://www.gjw.com/">☰ &nbsp; 全 部 分 类</a>
					<ul class="qbfl-list">
					<li class="yjxg-on">
						<a href="/base/list?kindId=1">
							<img src="${imagesPath}/ax-icon.png" original="${imagesPath}/ax-icon.png">&nbsp;一键选购</a><em>›</em>
						<div class="yjxg-box sec-box none" id="yijian"></div>
					</li>
					<li class="bj-on">
						<a href="/base/list?kindId=2">
							<img src="${imagesPath}/bj-icon.png" original="${imagesPath}/bj-icon.png">&nbsp;白 酒</a><em>›</em>
						<div class="bj-box sec-box none" id="baijiu">

						</div>
					</li>
					<li class="ptj-on">
						<a href="/base/list?kindId=3">
							<img src="${imagesPath}/ptj-icon.png" original="${imagesPath}/ptj-icon.png">&nbsp;葡 萄 酒</a><em>›</em>
						<div class="ptj-box sec-box none" id="putaojiu">

						</div>
					</li>
					<li class="yj-on">
						<a href="/base/list?kindId=4">
							<img src="${imagesPath}/yj-icon.png" original="${imagesPath}/yj-icon.png">&nbsp;洋 酒</a><em>›</em>
						<div class="yj-box sec-box none" id="yangjiu">
						</div>
					</li>
					<li class="hj-on">
						<a href="/base/list?kindId=5">
							<img src="${imagesPath}/hj-icon.png" original="${imagesPath}/hj-icon.png">&nbsp;黄 酒</a><em>›</em>
						<div class="hj-box sec-box none" id="huangjiu">

						</div>
					</li>
					<li class="ysj-on">
						<a href="/base/list?kindId=6">
							<img src="${imagesPath}/ysj-icon.png" original="${imagesPath}/ysj-icon.png">&nbsp;清 酒</a><em>›</em>
						<div class="ysj-box sec-box none" id="ys">

						</div>
					</li>
					<li class="pj-on">
						<a href="/base/list?kindId=7">
							<img src="${imagesPath}/pj-icon.png" original="${imagesPath}/pj-icon.png">&nbsp;啤 酒</a><em>›</em>
						<div class="pj-box sec-box none" id="pijiu">

						</div>
					</li>
					<li class="jjzb-on">
						<a href="/base/list?kindId=8">
							<img src="${imagesPath}/jjzb-icon.png" original="${imagesPath}/jjzb-icon.png">&nbsp;酒具周边</a><em>›</em>
						<div class="jjzb-box sec-box none" id="zb">
						</div>
					</li>
					<li class="xp-on">
						<a href="/base/list?kindId=9">
							<img src="${imagesPath}/xp-icon.png" original="${imagesPath}/xp-icon.png">&nbsp;新 品</a><em>›</em>
								<div class="jjzb-box sec-box none">
										<div class="box-lt fl clearfix"></div>
								</div>
					</li>
                        <li class="xp-on">
						<a href="/base/list?kindId=10">
							<img src="${imagesPath}/qingcang.png" original="${imagesPath}/qingcang.png">&nbsp;清 仓</a><em>›</em>
								<div class="jjzb-box sec-box none">
										<div class="box-lt fl clearfix"></div>
								</div>
					</li>
				</ul>
				</li>
				 <li><a href="http://www.gjw.com/">首页</a></li>
                        <li><a href="http://tm.gjw.com/">特卖会</a></li>
                        <li><a href="http://import.gjw.com/">进口馆</a></li>
                        <li><a href="http://www.gjw.com/help/caigou.htm">商家采销</a></li>
                        <li><a href="http://www.gjw.com/shoucang/default.htm">高端收藏</a></li> 
                        <li><a href="http://www.gjw.com/Minisite/20170419/1199.htm">尾货直批</a></li>
			</ul>
				<div class="fr" id="rigft_advertisting"><a href="http://www.gjw.com/product/item-id-7460.html" target="_blank"><img src="${imagesPath}/6a9d90cda55e4389815f5a78f37bc9c2.gif" alt="" original="${imagesPath}/6a9d90cda55e4389815f5a78f37bc9c2.gif"></a></div>
		</div>
		<!--商品导航e--> 
<!--首页头部e-->

	
        <!--头部e-->
          <div class="center">   
                      <style>
    .qbfl-list
    {
        display: block;
    }

    .swiper-slide img
    {
        width: 200px;
        height: 200px;
    }
</style>
<script type="text/javascript">
    //获取url参数
    function GetQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return null;
    }
    //是否手机访问
    var ua = navigator.userAgent;
    var ipad = ua.match(/(iPad).*OS\s([\d_]+)/),//iPad
        isIphone = !ipad && ua.match(/(iPhone\sOS)\s([\d_]+)/),//iPhone
        isAndroid = ua.match(/(Android)\s+([\d.]+)/),//Android
        isMobile = isIphone || isAndroid;
    //手机访问直接跳转到M站
    if (isMobile) {
        var isPC = GetQueryString("isMgjw");
        if (isPC != "1") {//手机访问,链接中没有参数,跳转到M站
            location.href = 'http://m.gjw.com';
        }
    }

</script>
<!--轮播-2-->
<div style="background: #FFFFFF;">
    <div style="border-bottom: 1px solid #EAEAEA; width: 100%;">
        <div class="swiper-container">
                <div class="gjw-wrapper" style="background: rgb(243, 64, 64); position: relative; margin: 0px auto; display: none;">
                    <a href="http://www.gjw.com/Minisite/20180601/1496.htm" target="_blank">
                        <img width="1200" src="${imagesPath}/8b4a9b317ab943b184abbf84a44c5854.jpg"></a>
                </div>
                <div class="gjw-wrapper" style="background: rgb(0, 80, 143); position: relative; margin: 0px auto; display: none;">
                    <a href="http://www.gjw.com/Activity/h20180531.html" target="_blank">
                        <img width="1200" src="${imagesPath}/545aa3da5e65430980439f1e33b0c351.jpg"></a>
                </div>
                <div class="gjw-wrapper" style="background: rgb(181, 215, 237); position: relative; margin: 0px auto; display: none;">
                    <a href="http://www.gjw.com/Minisite/20180526/1490.htm" target="_blank">
                        <img width="1200" src="${imagesPath}/f2a1d94195454325a3b37bfe1e97d6f7.jpg"></a>
                </div>
                <div class="gjw-wrapper" style="background: rgb(135, 207, 170); position: relative; margin: 0px auto; display: none;">
                    <a href="http://www.gjw.com/Minisite/20180528/1491.htm" target="_blank">
                        <img width="1200" src="${imagesPath}/91e34c2e026741a8ac8e0ab78cc59bc7.jpg"></a>
                </div>
                <div class="gjw-wrapper" style="background: rgb(118, 119, 131); position: relative; margin: 0px auto; display: none;">
                    <a href="http://www.gjw.com/product/item-id-7577.htm" target="_blank">
                        <img width="1200" src="${imagesPath}/542dc6b513d1402f80c17c97da3cbad4.jpg"></a>
                </div>
                <div class="gjw-wrapper" style="background: rgb(5, 4, 2); position: relative; margin: 0px auto; display: none;">
                    <a href="http://www.gjw.com/product/item-id-4759.html" target="_blank">
                        <img width="1200" src="${imagesPath}/90aae12cccfc4a48aa4f13f73b022267.jpg"></a>
                </div>
                <div class="gjw-wrapper" style="background: rgb(105, 138, 193); position: absolute; margin: 0px auto; display: none;">
                    <a href="http://www.gjw.com/product/Item-ID-7170.htm" target="_blank">
                        <img width="1200" src="${imagesPath}/4cf60c3344f14d698e712fe6a99a12d4.jpg"></a>
                </div>
                <div class="gjw-wrapper bractive" style="background: rgb(172, 117, 27); position: absolute; margin: 0px auto; display: block;">
                    <a href="http://www.gjw.com/product/item-id-7306.htm" target="_blank">
                        <img width="1200" src="${imagesPath}/f17a0b10ca634edba20feeba134aa9ef.jpg"></a>
                </div>
                <div class="gjw-wrapper" style="background: rgb(172, 131, 100); position: relative; margin: 0px auto; display: none;">
                    <a href="http://www.gjw.com/product/item-id-5961.html" target="_blank">
                        <img width="1200" src="${imagesPath}/c5c4d95758614015a1dd1a5abe8efeb2.jpg"></a>
                </div>
           
            <div class="v6_floatAd" style="position: absolute; top: 0px; left: 50%; margin-left: 410px; z-index: 4;">
                <div class="shine" style="width: 190px; height: 470px; overflow: hidden;opacity:0.9;">
                    
                        <a href="http://www.gjw.com/product/item-id-4518.html" target="_blank"><img src="${imagesPath}/67e5115f83f64660bbb1cb992f80f35b.jpg" original="${imagesPath}/67e5115f83f64660bbb1cb992f80f35b.jpg"> </a>
                        <a href="http://www.gjw.com/Product/item-ID-596.htm" target="_blank"><img src="${imagesPath}/79e66cb4de93464b86c7c494ed64b32d.jpg" original="${imagesPath}/79e66cb4de93464b86c7c494ed64b32d.jpg"> </a>
                </div>
            </div>
           <div class="controllbox"><div class="swiper-pagination"><span class="swiper-index" style="" data-id="9">1</span><span class="swiper-index" style="" data-id="8">2</span><span class="swiper-index" style="" data-id="7">3</span><span class="swiper-index" style="" data-id="6">4</span><span class="swiper-index" style="" data-id="5">5</span><span class="swiper-index" style="" data-id="4">6</span><span class="swiper-index" style="" data-id="3">7</span><span class="swiper-index" style="background: red;" data-id="2">8</span><span class="swiper-index" style="" data-id="1">9</span></div><div class="swiper-button-prev prevbtn1"></div><div class="swiper-button-next nextbtn1"></div></div></div>

        <div class="nav-note">
            <span class="fl">
                <img src="${imagesPath}/zhen-icon.png" original="${imagesPath}/zhen-icon.png">&nbsp;&nbsp;正品保证 放心购买 </span>
            <span class="fl">
                <img src="${imagesPath}/mian-icon.png" original="${imagesPath}/mian-icon.png">&nbsp;&nbsp;满100即享全国免邮费</span>
            <span class="fl">
                <img src="${imagesPath}/pei-icon.png" original="${imagesPath}/pei-icon.png">&nbsp;&nbsp;破损包赔 售后无忧</span>
        	<a class="fr" href="http://android.myapp.com/myapp/detail.htm?apkName=com.shichuang.goujiuwang&amp;ADTAG=mobile"><img src="${imagesPath}/phone-icon.png" original="${imagesPath}/phone-icon.png">&nbsp;&nbsp;  APP下单更优惠</a>
        </div>
    </div>
</div>
<!--轮播-e-->

<!--商品栏-->
<div class="content" style="background: url(http://static.gjw.com/public/img/bj.jpg?id=003) no-repeat center;">
    <div class="big-addbox">
        <ul class=" clearfix">
                <li><a href="http://www.gjw.com/product/item-id-5359.html" target="_blank">
                    <img src="${base}/pageHome_files/009c0cf6536546caba3421780224f9d8.jpg" title="53度 茅台 国博十二生肖酒 500ml*12瓶" original="${imagesPath}/009c0cf6536546caba3421780224f9d8.jpg"><div class="item-msg"><span class="fl">53度 茅台 国博十二生肖酒 500ml*12瓶</span><span class="fr"><em>4680</em>元</span></div>
                </a></li>
                <li><a href="http://www.gjw.com/product/item-id-7303.html" target="_blank">
                    <img src="${base}/pageHome_files/f4756d40a9154da9ba2206a681764c7a.jpg" title="52度 五粮液股份 丁酉鸡年纪念酒 500ml*4【整箱装】" original="${imagesPath}/f4756d40a9154da9ba2206a681764c7a.jpg"><div class="item-msg"><span class="fl">52度 五粮液股份 丁酉鸡年纪念酒 500ml*4【整箱装】</span><span class="fr"><em>988</em>元</span></div>
                </a></li>
                <li><a href="http://www.gjw.com/product/item-id-7118.htm" target="_blank">
                    <img src="${base}/pageHome_files/7b329442d70444559df60b193bb2373c.jpg" title="中级庄 中级庄 上梅多克产区 拉菲 岩石古堡 干红葡萄酒 750ml		" original="${imagesPath}/7b329442d70444559df60b193bb2373c.jpg"><div class="item-msg"><span class="fl">中级庄 中级庄 上梅多克产区 拉菲 岩石古堡 干红葡萄酒 750ml		</span><span class="fr"><em>178</em>元</span></div>
                </a></li>
        </ul>
        <ul class=" clearfix">
                <li><a href="http://www.gjw.com/product/item-id-7252.html" target="_blank">
                    <img title="53度 习酒 古韵酱香 珍藏级 5000ml" original="http://img0.gjw.com/Famous/2018/0529/8231db88405f46569cc80bf1fc21c2ca.jpg"><div class="item-msg"><span class="fl">53度 习酒 古韵酱香 珍藏级 5000ml</span><span class="fr"><em>3888</em>元</span></div>
                </a></li>  
                <li><a href="http://www.gjw.com/product/item-id-2614.html" target="_blank">
                    <img title="53度 珍酒 珍五 500ml" original="${imagesPath}/08c0e98fdcf54573878c58a472cda651.jpg"><div class="item-msg"><span class="fl">53度 珍酒 珍五 500ml</span><span class="fr"><em>200</em>元</span></div>
                </a></li>  
                <li><a href="http://www.gjw.com/Product/item-ID-6198.htm" target="_blank">
                    <img title="下单享酒具一套 智利 干露 红魔鬼 黑皮诺红葡萄酒 750ml*6瓶【整箱装】		" original="${imagesPath}/7974bd9d788c4f37b35b258d6ed1c65e.jpg"><div class="item-msg"><span class="fl">下单享酒具一套 智利 干露 红魔鬼 黑皮诺红葡萄酒 750ml*6瓶【整箱装】		</span><span class="fr"><em>359</em>元</span></div>
                </a></li>  
                <li><a href="http://www.gjw.com/product/item-id-7479.html" target="_blank">
                    <img title="53度 舒心 至尊封坛 500ml" original="http://img0.gjw.com/Famous/2018/0529/7a85f251c2ba46baac7120f498602b47.jpg"><div class="item-msg"><span class="fl">53度 舒心 至尊封坛 500ml</span><span class="fr"><em>69</em>元</span></div>
                </a></li>  
        </ul>
    </div>
    </div>
<div style="background:#f5f5f5">
    <div class="bjzkq-box" style="margin-top:0">
        <div class="ptj-tit">
            <span class="fl">茅台酒超值区</span>
            <a class="fr lookall" target="_blank" href="http://www.gjw.com/list/baijiu-maotai">查看全部&nbsp;<em>＞</em></a>
        </div>
        <div class="ptj-list mtzkq-box clearfix">
            <div class="ptj-lt fl">
                    <a href="http://www.gjw.com/product/item-id-2.html" target="_blank">
                        <img original="http://img0.gjw.com/Famous/2018/0529/7951502a56644391a04726b011598a91.jpg"></a>
                    <a href="http://www.gjw.com/product/item-id-6989.html" target="_blank">
                        <img original="${imagesPath}/fb4f2953208a44c0baba6671a5d74075.jpg"></a>
            </div>
            <div class="ptj-rt fr">
                <ul>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-7579.html" target="_blank">
                                 <div class="item-style">茅台酱香 天朝上品</div>
                                <img original="${imagesPath}/63b2156df36645ab8372a52f74d73a47.jpg">
                                <div class="item-name">53度 贵州 茅台集团 天朝上品 500ml </div>
                             
                                <div class="item-pri">会员价 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-2304.html" target="_blank">
                                 <div class="item-style">柔和酱香 回味悠长</div>
                                <img original="${imagesPath}/547d2cc68f9b491eba99fd539d1e938c.jpg">
                                <div class="item-name">53度 茅台王子 酱香经典 500ml </div>
                             
                                <div class="item-pri">239 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-1648.html" target="_blank">
                                 <div class="item-style">五星美酒 值得购买</div>
                                <img original="${imagesPath}/3cc8edf0d0c54b76aa7238fe6572f34d.jpg">
                                <div class="item-name">53度 茅台 五星 品鉴酒 （2017年产）375ml </div>
                             
                                <div class="item-pri">1999 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-7086.html" target="_blank">
                                 <div class="item-style">经典品质 热卖爆款</div>
                                <img original="${imagesPath}/8b3b86145de54554b3e852c78e6425c5.jpg">
                                <div class="item-name">52度 茅台醇 浓香型（整箱电商版）500ml*6	 </div>
                             
                                <div class="item-pri">249 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-4579.html" target="_blank">
                                 <div class="item-style">年份王子 酱香浓郁</div>
                                <img original="${imagesPath}/3fa275ee62994700b95429c01b50af18.jpg">
                                <div class="item-name">53度 茅台 王子酒（2017年产）750ml </div>
                             
                                <div class="item-pri">248 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-7064.html" target="_blank">
                                 <div class="item-style">百年印象 世纪酱香</div>
                                <img original="${imagesPath}/0353c9fc8b514b36ab1eb25ea891f7e2.jpg">
                                <div class="item-name">53度 茅台 王茅 百年印象酒 （2016年产） 500ml </div>
                             
                                <div class="item-pri">199 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-3909.htm" target="_blank">
                                 <div class="item-style">上善若水 精美瓶型</div>
                                <img original="${imagesPath}/19b640ac60fa48ebb8b1d261e9ec9f77.jpg">
                                <div class="item-name">53度 茅台 水立方酒 纪念版 500ml </div>
                             
                                <div class="item-pri">359 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-7463.html" target="_blank">
                                 <div class="item-style">少量补货 下手要快</div>
                                <img original="${imagesPath}/c83589b59f8747218cd4cb449c12e517.jpg">
                                <div class="item-name">53度 茅台 仁酒 丹青殊荣 500ml*6瓶【整箱装】 </div>
                             
                                <div class="item-pri">3199 元</div>
                            </a>
                        </li>
                </ul>
            </div>
        </div>
    </div>

<div class="bjzkq-box nfzkq-box">
        <div class="ptj-tit">
            <span class="fl">年份老酒专区</span>
            <a class="fr lookall" target="_blank" href="http://www.gjw.com/Search.html?Key=%E5%B9%B4%E4%BA%A7">查看全部&nbsp;<em>＞</em></a>
        </div>
        <div class="ptj-list nfjzkq-box clearfix">
            <div class="ptj-lt fl">
                    <a href="http://www.gjw.com/product/item-id-6138.html" target="_blank">
                        <img original="${imagesPath}/35da22b6ce894f2385786f12c93f8b5b.jpg"></a>
                    <a href="http://www.gjw.com/product/item-id-1473.html" target="_blank">
                        <img original="${imagesPath}/779a27d671b34c729431aac04b3e6221.jpg"></a>
            </div>
            <div class="ptj-rt fr">
                <ul>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-349.html" target="_blank">
                                 <div class="item-style">万象之和 祥气之和</div>
                                <img original="${imagesPath}/2792083f17bc4ba9912cf975b92a279b.jpg">
                                <div class="item-name">52度 五粮液 六和液 盛典装 （2013年产） 500ml </div>
                                <div class="item-pri">155 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-2512.html" target="_blank">
                                 <div class="item-style">十年曹操 天地英雄</div>
                                <img original="${imagesPath}/b890d7b92e7244f19b563ee81e87a11f.jpg">
                                <div class="item-name">55度 古井贡酒 十年陈酿（曹操瓶） （2012年产）750ml </div>
                                <div class="item-pri">349 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-2831.html" target="_blank">
                                 <div class="item-style">古法酿造 经典董酒</div>
                                <img original="${imagesPath}/68a52fc83e324287ad343c9088a1e52d.jpg">
                                <div class="item-name">46度 董酒 红色经典 (2014年产) 500ml </div>
                                <div class="item-pri">138 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-3911.html" target="_blank">
                                 <div class="item-style">双瓶致禧 品质头曲</div>
                                <img original="${imagesPath}/a01d002215e040ce8b7aac9bd401e00c.jpg">
                                <div class="item-name">52度 泸州老窖 八年陈头曲 致禧 （2012年产）500ml*2 </div>
                                <div class="item-pri">129 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-4519.html" target="_blank">
                                 <div class="item-style">美味老酒</div>
                                <img original="${imagesPath}/e3f00b31485b4c5c985bf361ebfa3828.jpg">
                                <div class="item-name">53度 郎酒 1956老郎酒 （2011年产） 500ml	 </div>
                                <div class="item-pri">199 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-7605.html" target="_blank">
                                 <div class="item-style">经典珍藏 品味历史</div>
                                <img original="${imagesPath}/7f6c047355ba4711850e265b44ac11d9.jpg">
                                <div class="item-name">52度 国窖 1573 鸿运568（2016年产） 500ml </div>
                                <div class="item-pri">899 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-7179.html" target="_blank">
                                 <div class="item-style">习水特曲 君子之品</div>
                                <img original="${imagesPath}/7dd56ce3a23d4f598de22f6045787028.jpg">
                                <div class="item-name">52度 习酒 习水特曲 T6 （2013年产）500ml </div>
                                <div class="item-pri">218 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-7465.html" target="_blank">
                                 <div class="item-style">年份老酒 山东专销</div>
                                <img original="${imagesPath}/e626b1caa1694c5a8eefe2c3ce068d33.jpg">
                                <div class="item-name">43度 茅台迎宾酒 （山东专销）（2009-2011年产）500ml*6【整箱装】 </div>
                                <div class="item-pri">459 元</div>
                            </a>
                        </li>
                </ul>
            </div>
        </div>
    </div>
    <!--白酒折扣区-->
    <div class="bjzkq-box">
        <div class="bjzkq-tit">
            <span class="fl">白酒折扣区</span>
            <a class="fr lookall" href="http://www.gjw.com/list/baijiu">查看全部&nbsp;<em>＞</em></a>
        </div>
        <div class="bjzkq-list bjzkq-box clearfix">
            <div class="ptj-lt fl">
                    <a href="http://www.gjw.com/product/item-id-1028.html" target="_blank">
                        <img original="${imagesPath}/da69214025644b6280b05b29d57cca4a.jpg"></a>
                    <a href="http://www.gjw.com/product/item-id-6899.html" target="_blank">
                        <img original="${imagesPath}/75c3fe3e1eae436ab991433b12b8157c.jpg"></a>
            </div>
            <div class="bjzkq-rt fr">
                <ul>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-472.html" target="_blank">

                                 <div class="item-style">经典泸特 浓香典范</div>
                               
                                <img original="${imagesPath}/1d5965bed1ac4abead29354c6dac556d.jpg">
                                 <div class="item-name">52度 泸州老窖 特曲 老字号 500ml </div>
                                <div class="item-pri">228 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-663.html" target="_blank">

                                 <div class="item-style">盛世剑南</div>
                               
                                <img original="${imagesPath}/17b4cc3002c9483ab7ead389fb39d2a9.jpg">
                                 <div class="item-name">52度 剑南春 天益老号珍藏级 500ml </div>
                                <div class="item-pri">508 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-7318.html" target="_blank">

                                 <div class="item-style">大师珍藏 品味历史</div>
                               
                                <img original="${imagesPath}/da9ce36945c34401948c1e6e11cddf9d.jpg">
                                 <div class="item-name">52度 国窖1573酒 曾娜大师收藏版 500ml </div>
                                <div class="item-pri">799 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-2830.html" target="_blank">

                                 <div class="item-style">传统工艺 纯粮酿造</div>
                               
                                <img original="${imagesPath}/5760b06effcf431baa64d37538e34f58.jpg">
                                 <div class="item-name">53度 老珍酒 500ml </div>
                                <div class="item-pri">98 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-5273.html" target="_blank">

                                 <div class="item-style">五粮酿造 滴滴香醇</div>
                               
                                <img original="${imagesPath}/cdf0b8a17a1641228090e08a7aba93b5.jpg">
                                 <div class="item-name">52度 五粮液股份 六和液 人和 500ml </div>
                                <div class="item-pri">139 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-2370.html" target="_blank">

                                 <div class="item-style">宝岛名酒 限时抢购</div>
                               
                                <img original="${imagesPath}/a2da1b21cbeb45f2b35cb41febd9a352.jpg">
                                 <div class="item-name">58度 台湾 金门 高粱酒 600ml </div>
                                <div class="item-pri">239 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-6646.html" target="_blank">

                                 <div class="item-style">红色双瓶 送礼首选</div>
                               
                                <img original="${imagesPath}/586583e8685644279612ac628d0ed7ed.jpg">
                                 <div class="item-name">52度 泸州老窖股份公司 金泸州 A6 750ml*2 </div>
                                <div class="item-pri">69 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-5925.html" target="_blank">

                                 <div class="item-style">醇香怡人 清仓特价</div>
                               
                                <img original="${imagesPath}/de1980a024e841698a28ca102cc67538.jpg">
                                 <div class="item-name">50度 古井贡酒 经典窖藏 精制五星 250ml </div>
                                <div class="item-pri">39 元</div>
                            </a>
                        </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="bjzkq-box ">
        <div class="ptj-tit">
            <span class="fl">葡萄酒超值区</span>
            <a class="fr lookall" target="_blank" href="http://www.gjw.com/list/putaojiu">查看全部&nbsp;<em>＞</em></a>
        </div>
        <div class="ptj-list ptjzkq-box clearfix">
            <div class="ptj-lt fl">
                    <a href="http://www.gjw.com/product/item-id-7639.htm" target="_blank">
                        <img original="${imagesPath}/6560fb4e056f4c70afbacd8bbbec94ee.jpg"></a>
                    <a href="http://www.gjw.com/product/item-id-4321.html" target="_blank">
                        <img original="${imagesPath}/a5a7eeca03d24a949ed8f4ebc09f7cf1.jpg"></a>
            </div>
            <div class="ptj-rt fr">
                <ul>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-7143.html" target="_blank">
                                 <div class="item-style">神之水滴</div>
                                <img original="${imagesPath}/7e6105f583e24b5688ccc28a2ee7eda9.jpg">
                                 <div class="item-name">法国 蒙佩奇 霹雳山庄 Mont Perat 神之水滴 干红葡萄酒 2014年 750ml		 </div>
                                <div class="item-pri">198 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-1237.htm" target="_blank">
                                 <div class="item-style">下单减20</div>
                                <img original="${imagesPath}/8bc30f3b1e884fbaa42b6bfea27a54f9.jpg">
                                 <div class="item-name">智利 拉菲 华诗歌/巴斯克 赤霞珠 红葡萄酒 750ml		 </div>
                                <div class="item-pri">99 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-4322.htm" target="_blank">
                                 <div class="item-style">整箱209</div>
                                <img original="${imagesPath}/35d99e248da14cd2ab5b9e74c7e5398e.jpg">
                                 <div class="item-name">澳大利亚 奔富 洛神山庄 设拉子赤霞珠 红葡萄酒 750ml*6瓶【整箱装】		 </div>
                                <div class="item-pri">209 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/Product/item-ID-54.htm" target="_blank">
                                 <div class="item-style">珍藏佳酿</div>
                                <img original="${imagesPath}/85ec12eed184485e801ae0bffe25fc4b.jpg">
                                 <div class="item-name">长城 华夏94 圆桶珍藏品葡萄酒 750ml		 </div>
                                <div class="item-pri">76 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-7637.html" target="_blank">
                                 <div class="item-style">多买多减</div>
                                <img original="${imagesPath}/ff1239aa55d04447aa10b18a40fba00c.jpg">
                                 <div class="item-name">中级庄 梅多克产区贝桥城堡 Chateau Pey De Pont 红葡萄酒 2013年 750ml		 </div>
                                <div class="item-pri">129 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-5985.html" target="_blank">
                                 <div class="item-style">赠酒具</div>
                                <img original="${imagesPath}/d342eb6e448c414ab18d876427201ce6.jpg">
                                 <div class="item-name">Penfolds奔富 蔻兰山/寇兰山系列 干红葡萄酒 澳洲原瓶进口 红酒6支装		 </div>
                                <div class="item-pri">498 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-7452.htm" target="_blank">
                                 <div class="item-style">买一赠一</div>
                                <img original="${imagesPath}/3678bdc222cd45f19d02f93b69ea897e.jpg">
                                 <div class="item-name">意大利 杜苏 莫斯卡托低醇高泡 葡萄酒 750ml		 </div>
                                <div class="item-pri">109 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-2882.htm" target="_blank">
                                 <div class="item-style">品质佳酿</div>
                                <img original="${imagesPath}/cc44f9d812e24bc58cc88fab2e920812.jpg">
                                 <div class="item-name">智利 活灵魂 干红葡萄酒 750ml		 </div>
                                <div class="item-pri">1299 元</div>
                            </a>
                        </li>
                </ul>
            </div>
        </div>
    </div>

    <!--洋酒热卖区-->
    <div class="bjzkq-box">
        <div class="ptj-tit">
            <span class="fl">洋酒热卖区</span>
            <a class="fr lookall" target="_blank" href="http://www.gjw.com/list/yangjiu">查看全部&nbsp;<em>＞</em></a>
        </div>
        <div class="ptj-list yjrmq-box clearfix">
            <div class="ptj-lt fl">
                <a href="http://www.gjw.com/Product/item-ID-214.htm" target="_blank">
                    <img original="${imagesPath}/97946e77f16249e58747a984eab9c1e8.jpg"></a>
            </div>
            <div class="ptj-rt fr">
                <ul>
                        <li>
                            <a href="http://www.gjw.com/product/item-id-7481.htm" target="_blank">
                                 <div class="item-style">赠胸针</div>
                                <img original="${imagesPath}/6b3955f2a1da441f882834021585b942.jpg">
                                 <div class="item-name">帝摩/大摩 12年苏格兰 单一麦芽威士忌 700ml		 </div>
                                <div class="item-pri">399 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/Product/item-ID-1104.htm" target="_blank">
                                 <div class="item-style">低价清仓</div>
                                <img original="${imagesPath}/6eef82af420b4b11ac18fd40b0089a2a.jpg">
                                 <div class="item-name">哥顿Gordons 金酒 750ml		 </div>
                                <div class="item-pri">52 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/Product/item-ID-79.htm" target="_blank">
                                 <div class="item-style">正品行货</div>
                                <img original="${imagesPath}/12021b11403e48d48b1d49874839c721.jpg">
                                 <div class="item-name">芝华士 12年威士忌 700ml		 </div>
                                <div class="item-pri">199 元</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.gjw.com/Product/item-ID-1086.htm" target="_blank">
                                 <div class="item-style">赠行李牌</div>
                                <img original="${imagesPath}/c68a9c0d4e344569922de987d8372f24.jpg">
                                 <div class="item-name">杰克丹尼 田纳西州威士忌 700ml		 </div>
                                <div class="item-pri">139 元</div>
                            </a>
                        </li>
                </ul>
            </div>
        </div>
    </div>




    <!--店长推荐-->
        <div class="dztj-box">	
        <div class="dztj-tit">
    	    <span class="fl">店长推荐</span>
        </div>
        <div class="dztj-list">
        	<div class="swiper-container-dztj swiper-container-horizontal">
                <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                    <ul class="swiper-slide swiper-slide-active" style="width: 1200px;">

        			<li>
        				<a href="http://www.gjw.com/product/item-id-2304.html" target="_blank">
        				   
                            <img class="imgno" src="${imagesPath}/83c5a9eebc0a4a44b5d6944e1cf89480.jpg" style="display: block;">
        				        <div class="dztj-name">53度 茅台王子 酱香经典 500ml</div>
        				        <div class="dztj-pri">239 元</div>
        				        <div class="dztj-hpnum">89 人好评</div>
        				    </a>
                    	</li>        			<li>
        				<a href="http://www.gjw.com/product/item-id-7064.html" target="_blank">
        				   
                            <img class="imgno" src="${imagesPath}/6651b2f0bd944b2d9c4b7d239483724d.jpg">
        				        <div class="dztj-name">53度 茅台 王茅 百年印象酒 （2016年产） 500ml</div>
        				        <div class="dztj-pri">258 元</div>
        				        <div class="dztj-hpnum">56 人好评</div>
        				    </a>
                    	</li>        			<li>
        				<a href="http://www.gjw.com/product/item-id-4518.html" target="_blank">
        				   
                            <img class="imgno" src="${imagesPath}/0d53638f14cd442dadb9094570c36b55.jpg">
        				        <div class="dztj-name">52度 五粮液 六和液股份 人和 品鉴装（光瓶）500ml</div>
        				        <div class="dztj-pri">98 元</div>
        				        <div class="dztj-hpnum">36 人好评</div>
        				    </a>
                    	</li>        			<li>
        				<a href="http://www.gjw.com/product/item-id-3911.html" target="_blank">
        				   
                            <img class="imgno" src="${imagesPath}/49df29c03d0f4b86b07348f83c5ad179.jpg">
        				        <div class="dztj-name">52度 泸州老窖 八年陈头曲 致禧 （2012年产）500ml*2瓶</div>
        				        <div class="dztj-pri">129 元</div>
        				        <div class="dztj-hpnum">39 人好评</div>
        				    </a>
                    	</li>        			<li>
        				<a href="http://www.gjw.com/product/item-id-6646.html" target="_blank">
        				   
                            <img class="imgno" src="${imagesPath}/cc61342fb9454e3b95cfa8df0e79f8fe.jpg">
        				        <div class="dztj-name">52度 泸州老窖股份公司 金泸州 A6 750ml*2</div>
        				        <div class="dztj-pri">69 元</div>
        				        <div class="dztj-hpnum">40 人好评</div>
        				    </a>
                    	</li>        			<li>
        				<a href="http://www.gjw.com/product/item-id-7385.html" target="_blank">
        				   
                            <img class="imgno" src="${imagesPath}/73f3653b94534d8bb69a004704150869.jpg">
        				        <div class="dztj-name">【整箱装】50度 古井贡酒/古井酒 （电商版） 750ml*6</div>
        				        <div class="dztj-pri">199 元</div>
        				        <div class="dztj-hpnum">5 人好评</div>
        				    </a>
                    	</li>                     
                    </ul>
                    <ul class="swiper-slide swiper-slide-next" style="width: 1200px;">
        			<li>
        				<a href="http://www.gjw.com/product/item-id-7385.html" target="_blank">
        				    
                            <img class="imgno" src="${imagesPath}/73f3653b94534d8bb69a004704150869.jpg">
        				        <div class="dztj-name">【整箱装】50度 古井贡酒/古井酒 （电商版） 750ml*6</div>
        				        <div class="dztj-pri">199 元</div>
        				        <div class="dztj-hpnum">5 人好评</div>
        				    </a>
                    	</li>        			<li>
        				<a href="http://www.gjw.com/product/item-ID-7330.htm" target="_blank">
        				    
                            <img class="imgno" src="${imagesPath}/6ce1697f1680404c8bfbebf407d5ff80_2.jpg">
        				        <div class="dztj-name">43度 麦卡伦 18年单一麦芽苏格兰威士忌 700ml</div>
        				        <div class="dztj-pri">2080 元</div>
        				        <div class="dztj-hpnum">8 人好评</div>
        				    </a>
                    	</li>        			<li>
        				<a href="http://www.gjw.com/product/item-id-7485.htm" target="_blank">
        				    
                            <img class="imgno" src="${imagesPath}/308962280436401db819f025f4ef3fc9.jpg">
        				        <div class="dztj-name">帝摩/大摩 雪茄三桶苏格兰 单一麦芽威士忌 700ml</div>
        				        <div class="dztj-pri">888 元</div>
        				        <div class="dztj-hpnum">29 人好评</div>
        				    </a>
                    	</li>        			<li>
        				<a href="http://www.gjw.com/product/item-id-7476.html" target="_blank">
        				    
                            <img class="imgno" src="${imagesPath}/74de8aca130540c0a207b8851e85cc2c.jpg">
        				        <div class="dztj-name">澳大利亚 奔富 BIN389 赤霞珠西拉 干红葡萄酒（2015年）750ml</div>
        				        <div class="dztj-pri">519 元</div>
        				        <div class="dztj-hpnum">1 人好评</div>
        				    </a>
                    	</li>        			<li>
        				<a href="http://www.gjw.com/product/item-id-7378.htm" target="_blank">
        				    
                            <img class="imgno" src="${imagesPath}/4308286208e94b44a2824cab298f6683.jpg">
        				        <div class="dztj-name">菊正宗 纯米大吟酿 1800ml</div>
        				        <div class="dztj-pri">560 元</div>
        				        <div class="dztj-hpnum">2 人好评</div>
        				    </a>
                    	</li>                    </ul>

                </div>
                <div class="swiper-button-prev prevbtn2 swiper-button-disabled"></div>
                <div class="swiper-button-next netxbtn2"></div>
                </div>
           </div>
    </div>
    <!--酒友热评-->

    <div class="jyrp-box">
        <div class="jyrp-tit">
            <span class="fl">酒友热评商品</span>
        </div>
        <div class="jyrp-list clearfix">
                <li>
                    <a href="http://www.gjw.com/product/item-id-7579.htm" target="_blank">
                        <img original="${imagesPath}/c19f4b468de548e18f81d947df502123.jpg">
                        <div class="rp-msg">
                            <p class="rp-note">完美到货，购酒网价格实惠，品尝一番酱香柔和舒爽，物流速度第二天就送酒上门了，客服服务满意，赞</p>
                            <span class="rp-add">来自156***3816的评价</span>
                            <span class="rp-name">53度 贵州 茅台集团 天朝上品 500ml</span><span class="rp-pri">599 元</span>
                        </div>
                    </a>
                </li>                <li>
                    <a href="http://www.gjw.com/product/item-id-214.htm" target="_blank">
                        <img original="${imagesPath}/1caaf4d4dc1e400d99f31276b2240f0f.jpg">
                        <div class="rp-msg">
                            <p class="rp-note">正品洋酒，这次活动的时候买的，价格很实惠，很满意，绝对的满意，贵网的洋酒很实惠啊，买洋酒的好地方，再来</p>
                            <span class="rp-add">来自131***1194的评价</span>
                            <span class="rp-name">尊尼获加Johnnie Walker 黑牌威士忌黑方 700ml</span><span class="rp-pri">143 元</span>
                        </div>
                    </a>
                </li>                <li>
                    <a href="http://www.gjw.com/product/item-id-7090.htm" target="_blank">
                        <img original="${imagesPath}/aa3701915b3846d49b6a7946579238f7.jpg">
                        <div class="rp-msg">
                            <p class="rp-note">2017年的，用券之后价格更便宜，珍品王子买了好多，一如既往的好酒，购酒网实心卖好酒，珍藏了。</p>
                            <span class="rp-add">来自185***7523的评价</span>
                            <span class="rp-name">53度 茅台 珍品王子酒（2017年） 1000ml</span><span class="rp-pri">499 元</span>
                        </div>
                    </a>
                </li>                <li>
                    <a href="http://www.gjw.com/product/item-id-7143.htm" target="_blank">
                        <img original="${imagesPath}/1978b2cd3c9d40cd9a538196ad6c7c39.jpg">
                        <div class="rp-msg">
                            <p class="rp-note">久负盛名的一款酒，这次在购酒网买了，很正，包装很好，完好收到，没有失望</p>
                            <span class="rp-add">来自135***6434的评价</span>
                            <span class="rp-name">法国 蒙佩奇 霹雳山庄 Mont Perat 神之水滴 干红葡萄酒 2014年 750ml</span><span class="rp-pri">198 元</span>
                        </div>
                    </a>
                </li>        </div>
    </div>
    <!--视频-->
    <div class="sp-box">
        <div class="sp-tit">
            <span class="fl">视频</span>
        </div>
        <div class="sp-list clearfix">
                <li data-title="购酒网（上海）供应链管理总部简介:酒类全品类供应链管理专家" data-sr="http://static.gjw.com/video/4.mp4">
                    <a target="_blank" href="http://www.gjw.com/Home/video?id=1">
                        
                        <img original="${imagesPath}/1_11.jpg">
                        <span class="sp-name">购酒网（上海）供应链管理总部简介</span>
                      
                        <div class="playicon">▶</div>
                    </a>
                </li> 
                <li data-title="五粮迎宾酒  诚迎天下客:购酒网&amp;五粮液战略单品" data-sr="http://static.gjw.com/video/3.mp4">
                    <a target="_blank" href="http://www.gjw.com/Home/video?id=2">
                        
                        <img original="${imagesPath}/1_13.jpg">
                        <span class="sp-name">五粮迎宾酒  诚迎天下客</span>
                      
                        <div class="playicon">▶</div>
                    </a>
                </li> 
                <li data-title="茅台镇舒心酱酒微电影:老百姓喜爱的好酱酒" data-sr="http://static.gjw.com/video/2.mp4">
                    <a target="_blank" href="http://www.gjw.com/Home/video?id=3">
                        
                        <img original="${imagesPath}/1_15.jpg">
                        <span class="sp-name">茅台镇舒心酱酒微电影</span>
                      
                        <div class="playicon">▶</div>
                    </a>
                </li> 
                <li data-title="一分钟教你如何把茶调成高逼格鸡尾酒:无敌炫酷D炸天" data-sr="http://static.gjw.com/video/1.mp4">
                    <a target="_blank" href="http://www.gjw.com/Home/video?id=4">
                        
                        <img original="${imagesPath}/1_17.jpg">
                        <span class="sp-name">一分钟教你如何把茶调成高逼格鸡尾酒</span>
                      
                        <div class="playicon">▶</div>
                    </a>
                </li> 
        </div>
    </div> 
    </div>
    	<!--首页头部s-->
	<div class="fixedSch_box" style="top: 0px;">
    <div class="mid_box">
        <a href="http://www.gjw.com/" class="fixedSch_logo">
            <img src="${imagesPath}/whiteLogo.png" alt="" class="fl" original="${imagesPath}/whiteLogo.png">
        </a>
        <div class="fixedSch_schBox fl" id="fixSch">
            
        <div class="@@-container"><input type="text" @@="off" name="query" placeholder="茅台飞天" class="topSearchtxt fl" style="border-radius: 3px 0px 0px 3px;"><div class="proposal-box"><ul class="proposal-list"></ul></div><div class="topSearchbtn fl">搜索</div></div></div>
    </div>
</div>

    	<script>
    	    $(window).scroll(function () {
    	        var nav = $('.nav-note').offset().top - $(document).scrollTop()
    	        if (nav < -102) {
    	            $(".fixedSch_box").css("display", "block");
    	        } else {
    	            $(".fixedSch_box").css("display", "none")
    	        }
    	    })
	</script>

          </div>
    
        <!--尾部-s-->
        <div class="v6_footer v6_clear">
            <div class="footerMid">
                <div class="footerMid_t footer_center">
                    <div alt="" class="footer_tel fl png_bg">
                    </div>
            
                    <a onclick="NTKF.im_openInPageChat(&#39;kf_9250_1462524671271&#39;)" target="_blank" class="footer_serv fl" rel="nofollow">
                        <img alt="" class="png_bg" style="cursor: pointer;" original="${imagesPath}/onlineServ.png">
                    </a>
                    <div class="fr qrCodeBox">
                        <p class="fl">
                            超万平方米仓储体验店<br>
                            上海松江区茂盛路202弄18号<br>
                            客服邮箱：kf@goujiuwang.com<br>
                            <strong>扫描二维码，掌握一手优惠资讯</strong><br>
                        </p>
                        <img alt="" class="fl footer_qrCode" original="${imagesPath}/qrcode_06.jpg">
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
                                    <a href="http://www.gjw.com/jituan/default.html" rel="nofollow">
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
                            <a href="http://www.gjw.com/linkShowList.htm">友情链接</a>
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
                <div id="pFriendlink" class="frendLinkBox">
                    <div class="tempWrap" style="overflow:hidden; position:relative; height:32px">
                        <ul class="friendLinkList" style="height: 160px; position: relative; padding: 0px; margin: 0px; top: -32px;">
                            <li class="clone" style="height: 32px;"><a href="http://brand.gjw.com/">酒水知识</a><span>|</span><a href="http://bbs.gjw.com/">购酒论坛</a><span>|</span><a href="http://www.gjw.com/brand/maotai.htm">茅台</a><span>|</span><a href="http://www.jiutw.com/">中国酒投网</a><span>|</span><a href="http://www.1zw.com/">9块9包邮</a><span>|</span><a href="http://mingjiu.3158.cn/">酒水加盟</a><span>|</span><a href="http://china.globrand.com/">品牌加盟网</a><span>|</span><a href="http://www.zhaoshangbao.com/">建材加盟</a><span>|</span><a href="http://www.meidebi.com/">没得比导购网</a><span>|</span><a href="http://www.shaojiu.com/">烧酒网</a><span>|</span><a href="http://hao.qudao.com/">商机网 </a><span>|</span><a href="http://guangzhou.anjuke.com/">广州房产信息网</a><span>|</span><a href="http://www.youdaili.net/">代理ip</a><span>|</span><a href="http://faq.s.cn/">名鞋库</a><span>|</span><a href="http://www.easeeyes.com/">隐形眼镜</a><span>|</span><a href="http://www.9928.tv/">美酒网</a><span>|</span><a href="http://www.dv37.com/">创业</a><span>|</span><a href="http://www.1637.com/">品牌加盟网</a><span>|</span><a href="http://www.jutubao.com/ddny/">订单农业</a><span>|</span><a href="http://liaocheng.ganji.com/">聊城赶集网</a><span>|</span><a href="http://www.jianiang.cn/">中国酒业新闻网</a><span>|</span><a href="http://itunes.apple.com/cn/app/id1185762879">购酒网app</a><span>|</span><a href="http://www.puercn.com/">普洱茶</a><span>|</span><a href="http://www.gjw.com/">买酒网</a><span>|</span><a href="http://www.9998.tv/">白酒招商</a><span>|</span><a href="http://www.9928.tv/">酒代理</a><span>|</span><a href="http://www.gjw.com/linkShowList.htm">更多</a><span>|</span></li></ul></div>
                </div>
                <p>
                    Copyright® 2009-2018 gjw.com, All Rights Reserved 	购酒网(上海)供应链管理有限公司   版权所有
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
                </a><a href="http://order.gjw.com/order/Cart.html" rel="nofollow" class="rb_btn rb_Center"> 
                    <div class="footer_iconBox">
                        <span class="iconfont cart"></span> 购<br>
                        物<br>
                        车
                    </div>
                </a>
                <div id="shopping_poppup" class="shopping_poppup" style="display: none;">
                    <a class="shopping_poppup_a" href="http://order.gjw.com/order/Cart.htm" rel="nofollow">去购物车结算</a>
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
                            <a href="http://www.gjw.com/"> 
                                <img src="${imagesPath}/APP.png" alt="" original="${imagesPath}/APP.png">
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
                                <div class="tips_imgBox" id="tips_imgBox"><a href="http://www.gjw.com/product/item-id-3568.htm" target="_blank"><img src="${imagesPath}/00d84c57071640e69b4fae0cccbe2cf3.jpg" alt="" original="${imagesPath}/00d84c57071640e69b4fae0cccbe2cf3.jpg"></a></div> <span class="tips_arrow">◆</span> </div> </div>
            
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
                </a><a href="http://www.gjw.com/" class="rb_btn rb_Center" id="rightBar_backTop">
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

      <script src="${base}/pageHome_files/swiper.min.js.下载"></script>
    <script src="${base}/pageHome_files/jquery.lazyload.js.下载"></script>
        
<script src="${base}/pageHome_files/layer.js.下载"></script>
        
         <script src="${base}/pageHome_files/Order_index.min.js.下载"></script>
        <script src="${base}/pageHome_files/main.min.js.下载"></script>

    <script src='//kefu.easemob.com/webim/easemob.js?configId=2020b20c-f850-4730-ad1f-47273a1818e1'></script>
        <#--<script type="text/javascript">-->
            <#--//SY小能客服-->

            <#--NTKF_PARAM = {-->
                <#--siteid: "kf_9250", 	                //企业ID，为固定值，必填-->
                <#--settingid: "kf_9250_1462524671271", //接待组ID，为固定值，必填kf_9250_1462522749545-->
                <#--uid: gj_User.id, 	                        //用户ID，未登录可以为空，但不能给null，uid赋予的值显示到小能客户端上-->
                <#--uname: gj_User.Name + gj_User.mob, 	            //用户名，未登录可以为空，但不能给null，uname赋予的值显示到小能客户端上-->
                <#--isvip: "0",                         //是否为vip用户，0代表非会员，1代表会员，取值显示到小能客户端上-->
                <#--userlevel: gj_User.levelId  	        //网站自定义会员级别，0-N，可根据选择判断，取值显示到小能客户端上-->
            <#--}-->
    <#--</script>-->

    <script type="text/javascript" src="${base}/pageHome_files/ntkfstat.js.下载" charset="utf-8"></script>
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
<p style="display:none">
<script src="${base}/pageHome_files/z_stat.php" language="JavaScript"></script><script src="${base}/pageHome_files/core.php" charset="utf-8" type="text/javascript"></script><a href="http://www.cnzz.com/stat/website.php?web_id=1253416101" target="_blank" title="站长统计">站长统计</a>
</p>

    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?f45b9c2a3772066fdf84b38506d4920f";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
        //1.首先要拼接要传递的参数，其次要确定我要跳哪个controller
        //2.我拼接了这么多条件，每种的拼接条件都需要写一个controller？controller能不能动态接受
</script>
    <script src="/js/jquery-1.4.2.js" type="text/javascript">
        function skip() {
            
        }
    </script> 
        
    

</body></html>