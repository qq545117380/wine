
<!-- saved from url=(0036)http://order.gjw.com/order/Cart.html -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--需要添加base-->
    <#assign base=request.contextPath />
    <base id="base" href="${base}">
    <title>购物车 - 购酒网</title>
    <link rel="stylesheet" href="${base}/shoppingCart_files/main.min.css">

    <script type="text/javascript" src="${base}/js/jquery-3.3.1.js"></script>
     <script src="${base}/shoppingCart/hm.js.下载"></script>
    <script src="${base}/shoppingCart_files/jquery-1.7.1.min.js.下载"></script>
      <script>
            document.domain = "gjw.com"; 
        </script>
    
    	<script src="${base}/shoppingCart_files/layer.js.下载"></script><link rel="stylesheet" href="${base}/shoppingCart_files/layer.css" id="layui_layer_skinlayercss" style="">
    <script src="${base}/shoppingCart_files/main.min.js.下载"></script>

    <style>
        .ksy {
        
            display:none;
        }
    </style>

</head>
<body>
    <div class="topBar" id="topBar">
        <div class="topBarCon w990">
            <div class="topBarFl fl">
                <ul>
                    <li><a href="javascript:void(0)" class="cd5">18607104507</a>&nbsp;&nbsp;<a href="Javascript:Exit()">退出</a>&nbsp;&nbsp;</li>                </ul>
            </div>
            <div class="miniMenu fr">
                <ul>
                    <li class="m1"><a class="cart-a" href="http://order.gjw.com/order/Cart.html" rel="nofollow"><b></b>购物车<strong id="head_cart_no">6                                                                                                                      </strong>件<u></u></a>
                        <div class="mini-cart hide" style="display: none;">
                            <div class="no-list hide">
                                您的购物车中暂时没有商品。</div>
                            <div class="cart-list" id="head_cart">
                                <span class="lineHeight_30">您的购物车中暂时没有商品。</span>
                            </div>
                        </div>
                    </li>
                    <li class="m2"><a href="http://order.gjw.com/UserCenter/MyOrder.html" rel="nofollow">
                    我的订单</a></li>
                    <li class="m3"><a class="user-a" href="http://order.gjw.com/UserCenter/MyOrder.html" rel="nofollow">
                    用户中心<u></u></a>
                        <div class="miniMenu-child hide" style="display: none;">
                            <dl>
                                <dd>
                                    <a href="http://order.gjw.com/UserCenter/MyComment.html" rel="nofollow">商品评论</a></dd>
                                <dd>
                                    <a href="http://order.gjw.com/UserCenter/MyFav.html" rel="nofollow">收藏夹</a></dd>
                                <dd>
                                    <a href="http://order.gjw.com/UserCenter/MyVoucher.html" rel="nofollow">我的电子券</a></dd>
                            </dl>
                        </div>
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
    <!--头部-->
    <!--主体-->
    <div id="global_body">
        <div class="cart_title">
            <h1 class="fl">
                我的购物车</h1>
            <div id="shipping_area_top" class="fl">
                <b>单笔订单满100元免运费（香港、澳门、台湾、钓鱼岛地区和拆分订单除外）</b></div>
                     <#--<a id="ASettlement" href="Javascript:layer.msg(&#39;客官,请选择商品再去结算！&#39;)" class="fr cbtn check_btn">
                         去结算
                     </a>-->
                     <a id="ASettlement" href="${base}/shopping/settle" class="fr cbtn check_btn">
                        去结算
                     </a>
        </div>
        <div id="divOrderInfo">
            <dl class="cart_box">
                <dt>
                    <span class="check_all">
                    <input id="CheckAll" class="check_ll" name="checkAll" type="checkbox" checked="">
                    全选
                    </span>
                    <span class="cb_r1" style="text-align: left;">商品</span> <span class="cb_r2">
                        单价</span> <span class="cb_r3">优惠</span> <span class="cb_r4">数量</span> <span class="cb_r5">
                            小计</span> <span class="cb_r6">操作</span>
                    <div class="clear">
                        
                    </div>
                </dt>
                <dd id="cart_goods">
                    <div id="cart_goods_area">
                        
                        <table class="cart_goods_area tbcart" id="tbcart7637">
                            <tbody>
                            <#list shoppingcartList as shoppingValue>
                                <tr>

                                    <td class="zp_td check">
                                        <span><b>
                                                    <input class="check_cb" id="Checkbox7637" type="checkbox" name="check" checked="" value="7637">
                                                </b></span>
                                    </td>
                                    <td class="cb_r11 zp_td">
                                        <a href="http://www.gjw.com/product/item-id-7637.htm" target="_blank" value="${shoppingValue.cartImg}" class="cartImg">
                                            <img width="50" height="50" src="${imagesPath}/${shoppingValue.cartImg}" title="${shoppingValue.cartName}">
                                        </a>
                                    </td>
                                    <td class="cb_r1">
                                        <a class="c12" href="http://www.gjw.com/product/item-id-7637.htm" target="_blank">
                                        ${shoppingValue.cartName}</a><br>
                                    </td>
                                    <td class="cb_r2">
                                        ${shoppingValue.cartPrice}
                                    </td>
                                    <td class="cb_r3 cf04" id="Pro7637">
                                       ${shoppingValue.cartDiscounts}
                                    </td>
                                    <td class="cb_r4">
                                        <p class="num_line">
                                            </p><div class="imp">
                                                <span class="fl Cart_down " index="7637">－</span>
                                                <input type="text" value="${shoppingValue.cartCount}" maxlength="4" class="fl num_input Quantity" index="7637" id="Quantity7637">
                                                <span class="fl Cart_up" index="7637">＋</span> <span style="display: none;" class="num_tip"></span>
                                            </div>
                                        <p></p>
                                    </td>
                                    <td class="cb_r5">
                                        <span id="sum7637" class="cs_sum"><b id="shop_sum"></b>${shoppingValue.cartPrice}</span>
                                    </td>
                                    <td class="cb_r6">
                                        <span class="coll_opt"><a href="javaScript:Collect(7637)">收藏</a></span>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <span class="del_opt"><a href="javaScript:Remove(7637)">删除</a></span>
                                    </td>

                                </tr>
                            </#list>
                            </tbody>
                        </table>
                        <div class="box"></div>
                    </div>
                    <div id="cart_favor_area">
                    </div>
                </dd>
            </dl>
            <dl id="cart_info" class="cart_info">
                <div id="bonus_list_area">
                    <dt id="yhq_2">
                        <ul class="yhq_lab" style="padding-top: 10px;">
                            <li>电子券在“去结算”页面中使用</li>
                        </ul>
                        <div class="clear">
                        </div>
                    </dt>
                </div>
                <dd>
                    <ul id="total_area" class="cart_sum">
                        <li id="total_price">
                            <span class=" fl  btn_all">
                            <input id="check_All" class="check_ll" name="checkAll" type="checkbox" checked="">
                            全选
                            </span>
                            <span class="fl delepro" id="delePro"><a href="javascript:void(0)">删除选中商品</a>
                            </span><span class="fl cearpro" id="creaPro"><a href="javascript:void(0)">清空购物车</a>
                            </span>应付商品金额：
                            <font id="palyMoney">¥654.00</font>
                        </li>
                        <li style="display: none;" id="total_discount">兑换券折扣：<b>-¥0.00</b></li>
                        <li style="display: none;" id="total_bonus">优惠券折扣：<b>-¥0.00</b></li>
                        <li style="display: none;" id="total_discount">折扣：<b>-¥0.00</b></li>
                        <li style="padding-top: 10px; border-top: 1px solid rgb(234, 234, 234); margin-top: 6px;
                            display: none;" id="total_amount">应付商品金额：
                            <font>¥137.00</font>
                        </li>
                    </ul>
                    <div class="clear">
                    </div>
                </dd>
            </dl>
            <div class="cart_btn">
                <a href="http://www.gjw.com/" id="ABack" class="fl cbtn gono_btn">继续购物</a>
                <span class="fl tip">商品价格和库存请以订单提交时为准</span>
                 <#--<a id="ASettlement1" href="http://order.gjw.com/order/settlement" class="fr cbtn check_btn">
                     去结算
                 </a>-->
                <a id="ASettlement1" href="${base}/shopping/settle" class="fr cbtn check_btn">
                    去结算
                </a>
            </div>
        </div>
        <dl class="trinket_box">
            <dt><span>你可能还需要</span></dt>
            <dd>
                     <ul>
                    <li class="goods_pic">
                        <a href="http://www.gjw.com/product/item-id-2083.htm" target="_blank" title="52度 五粮液股份 中国铁路 站车酒 250ml">
                            <img width="100" height="100" alt="52度 五粮液股份 中国铁路 站车酒 250ml" src="${base}/shoppingCart_files/4abe563dbf7340328995f58051710a05_1.jpg"></a>
                    </li>
                    <li class="goods_name"><a href="http://www.gjw.com/product/item-id-2083.htm" target="_blank" title="52度 五粮液股份 中国铁路 站车酒 250ml">
                                52度 五粮液股份 中国铁路 站车酒 250ml</a>&nbsp;&nbsp;<span class="cf04"></span></li>
                    <li class="goods_price">¥25</li>
                    <li class="goods_btn"><a class="fl cbtn putin_btn AddCart" href="javascript:goCart(2083,event)" index="2083">
                                加入购物车</a> </li>
                </ul> 
                     <ul>
                    <li class="goods_pic">
                        <a href="http://www.gjw.com/product/item-id-2186.htm" target="_blank" title="53度 茅台 王子酒 500ml*6瓶【整箱装】">
                            <img width="100" height="100" alt="53度 茅台 王子酒 500ml*6瓶【整箱装】" src="${base}/shoppingCart_files/92b8f818ecd14bbe9a3c55865e7bae38_1.jpg"></a>
                    </li>
                    <li class="goods_name"><a href="http://www.gjw.com/product/item-id-2186.htm" target="_blank" title="53度 茅台 王子酒 500ml*6瓶【整箱装】">
                                53度 茅台 王子酒 500ml*6瓶【整箱装】</a>&nbsp;&nbsp;<span class="cf04"></span></li>
                    <li class="goods_price">¥948</li>
                    <li class="goods_btn"><a class="fl cbtn putin_btn AddCart" href="javascript:goCart(2186,event)" index="2186">
                                加入购物车</a> </li>
                </ul> 
                     <ul>
                    <li class="goods_pic">
                        <a href="http://www.gjw.com/product/item-id-7.htm" target="_blank" title="43度 茅台 迎宾酒 500ml">
                            <img width="100" height="100" alt="43度 茅台 迎宾酒 500ml" src="${base}/shoppingCart_files/6a14aa4d203c43729f2e4d1b5943a7b2_1.jpg"></a>
                    </li>
                    <li class="goods_name"><a href="http://www.gjw.com/product/item-id-7.htm" target="_blank" title="43度 茅台 迎宾酒 500ml">
                                43度 茅台 迎宾酒 500ml</a>&nbsp;&nbsp;<span class="cf04"></span></li>
                    <li class="goods_price">¥68</li>
                    <li class="goods_btn"><a class="fl cbtn putin_btn AddCart" href="javascript:goCart(7,event)" index="7">
                                加入购物车</a> </li>
                </ul> 
                     <ul>
                    <li class="goods_pic">
                        <a href="http://www.gjw.com/product/item-id-4098.htm" target="_blank" title="53度 茅台 迎宾酒 500ml*6瓶【整箱装】">
                            <img width="100" height="100" alt="53度 茅台 迎宾酒 500ml*6瓶【整箱装】" src="${base}/shoppingCart_files/16340c5123714b24addb46a05330410f_1.jpg"></a>
                    </li>
                    <li class="goods_name"><a href="http://www.gjw.com/product/item-id-4098.htm" target="_blank" title="53度 茅台 迎宾酒 500ml*6瓶【整箱装】">
                                53度 茅台 迎宾酒 500ml*6瓶【整箱装】</a>&nbsp;&nbsp;<span class="cf04"></span></li>
                    <li class="goods_price">¥768</li>
                    <li class="goods_btn"><a class="fl cbtn putin_btn AddCart" href="javascript:goCart(4098,event)" index="4098">
                                加入购物车</a> </li>
                </ul> 
                     <ul>
                    <li class="goods_pic">
                        <a href="http://www.gjw.com/product/item-id-5157.htm" target="_blank" title="53度 习酒 银质 500ml">
                            <img width="100" height="100" alt="53度 习酒 银质 500ml" src="${base}/shoppingCart_files/0bed24af0507417e85ab46cb14a0f6ae_1.jpg"></a>
                    </li>
                    <li class="goods_name"><a href="http://www.gjw.com/product/item-id-5157.htm" target="_blank" title="53度 习酒 银质 500ml">
                                53度 习酒 银质 500ml</a>&nbsp;&nbsp;<span class="cf04"></span></li>
                    <li class="goods_price">¥178</li>
                    <li class="goods_btn"><a class="fl cbtn putin_btn AddCart" href="javascript:goCart(5157,event)" index="5157">
                                加入购物车</a> </li>
                </ul> 
                     <ul>
                    <li class="goods_pic">
                        <a href="http://www.gjw.com/product/item-id-6510.htm" target="_blank" title="53度 茅台 赖茅（传承）蓝色 500ml">
                            <img width="100" height="100" alt="53度 茅台 赖茅（传承）蓝色 500ml" src="${base}/shoppingCart_files/148bbc5b6ee94ad7800be34b02553606_1.jpg"></a>
                    </li>
                    <li class="goods_name"><a href="http://www.gjw.com/product/item-id-6510.htm" target="_blank" title="53度 茅台 赖茅（传承）蓝色 500ml">
                                53度 茅台 赖茅（传承）蓝色 500ml</a>&nbsp;&nbsp;<span class="cf04"></span></li>
                    <li class="goods_price">¥399</li>
                    <li class="goods_btn"><a class="fl cbtn putin_btn AddCart" href="javascript:goCart(6510,event)" index="6510">
                                加入购物车</a> </li>
                </ul> 
                     <ul>
                    <li class="goods_pic">
                        <a href="http://www.gjw.com/product/item-id-14.htm" target="_blank" title="52度 五粮液 500ml">
                            <img width="100" height="100" alt="52度 五粮液 500ml" src="${base}/shoppingCart_files/472d0547a9c44a4488d04dc5eabbf2e1_1.jpg"></a>
                    </li>
                    <li class="goods_name"><a href="http://www.gjw.com/product/item-id-14.htm" target="_blank" title="52度 五粮液 500ml">
                                52度 五粮液 500ml</a>&nbsp;&nbsp;<span class="cf04"></span></li>
                    <li class="goods_price">¥1099</li>
                    <li class="goods_btn"><a class="fl cbtn putin_btn AddCart" href="javascript:goCart(14,event)" index="14">
                                加入购物车</a> </li>
                </ul> 
                     <ul>
                    <li class="goods_pic">
                        <a href="http://www.gjw.com/product/item-id-465.htm" target="_blank" title="53度 郎酒 1898老郎酒（2015年产） 500ml">
                            <img width="100" height="100" alt="53度 郎酒 1898老郎酒（2015年产） 500ml" src="${base}/shoppingCart_files/2045e5caa26f4b66aa2b0f91763af6ea_1.jpg"></a>
                    </li>
                    <li class="goods_name"><a href="http://www.gjw.com/product/item-id-465.htm" target="_blank" title="53度 郎酒 1898老郎酒（2015年产） 500ml">
                                53度 郎酒 1898老郎酒（2015年产） 500ml</a>&nbsp;&nbsp;<span class="cf04"></span></li>
                    <li class="goods_price">¥248</li>
                    <li class="goods_btn"><a class="fl cbtn putin_btn AddCart" href="javascript:goCart(465,event)" index="465">
                                加入购物车</a> </li>
                </ul> 
                     <ul>
                    <li class="goods_pic">
                        <a href="http://www.gjw.com/product/item-id-4229.htm" target="_blank" title="52度 水井坊 臻酿八號 500ml">
                            <img width="100" height="100" alt="52度 水井坊 臻酿八號 500ml" src="${base}/shoppingCart_files/03a4e57d325f41e49a6c9946bccdc2dc_1.jpg"></a>
                    </li>
                    <li class="goods_name"><a href="http://www.gjw.com/product/item-id-4229.htm" target="_blank" title="52度 水井坊 臻酿八號 500ml">
                                52度 水井坊 臻酿八號 500ml</a>&nbsp;&nbsp;<span class="cf04"></span></li>
                    <li class="goods_price">¥389</li>
                    <li class="goods_btn"><a class="fl cbtn putin_btn AddCart" href="javascript:goCart(4229,event)" index="4229">
                                加入购物车</a> </li>
                </ul> 
                     <ul>
                    <li class="goods_pic">
                        <a href="http://www.gjw.com/product/item-id-1529.htm" target="_blank" title="53度 珍酒 珍品 1975 500ml">
                            <img width="100" height="100" alt="53度 珍酒 珍品 1975 500ml" src="${base}/shoppingCart_files/19347f6c39134072bfd1fb98358908f2_1.jpg"></a>
                    </li>
                    <li class="goods_name"><a href="http://www.gjw.com/product/item-id-1529.htm" target="_blank" title="53度 珍酒 珍品 1975 500ml">
                                53度 珍酒 珍品 1975 500ml</a>&nbsp;&nbsp;<span class="cf04"></span></li>
                    <li class="goods_price">¥198</li>
                    <li class="goods_btn"><a class="fl cbtn putin_btn AddCart" href="javascript:goCart(1529,event)" index="1529">
                                加入购物车</a> </li>
                </ul> 
                     <ul>
                    <li class="goods_pic">
                        <a href="http://www.gjw.com/product/item-id-35.htm" target="_blank" title="52度 剑南春 500ml">
                            <img width="100" height="100" alt="52度 剑南春 500ml" src="${base}/shoppingCart_files/cb2a83e93b5a46c493d01aceb5f3c4ab_1.jpg"></a>
                    </li>
                    <li class="goods_name"><a href="http://www.gjw.com/product/item-id-35.htm" target="_blank" title="52度 剑南春 500ml">
                                52度 剑南春 500ml</a>&nbsp;&nbsp;<span class="cf04"></span></li>
                    <li class="goods_price">¥398</li>
                    <li class="goods_btn"><a class="fl cbtn putin_btn AddCart" href="javascript:goCart(35,event)" index="35">
                                加入购物车</a> </li>
                </ul> 
                     <ul>
                    <li class="goods_pic">
                        <a href="http://www.gjw.com/product/item-id-1473.htm" target="_blank" title="52度 文君酒（2013年产） 500ml">
                            <img width="100" height="100" alt="52度 文君酒（2013年产） 500ml" src="${base}/shoppingCart_files/066b9f1b753149eeba47024619f311de_1.jpg"></a>
                    </li>
                    <li class="goods_name"><a href="http://www.gjw.com/product/item-id-1473.htm" target="_blank" title="52度 文君酒（2013年产） 500ml">
                                52度 文君酒（2013年产） 500ml</a>&nbsp;&nbsp;<span class="cf04"></span></li>
                    <li class="goods_price">¥359</li>
                    <li class="goods_btn"><a class="fl cbtn putin_btn AddCart" href="javascript:goCart(1473,event)" index="1473">
                                加入购物车</a> </li>
                </ul> 
               
            </dd>
        </dl>
    </div>
    <!--主体-->
    <!--底部-->
    <div class="foot" id="foot">
        <img src="${base}/shoppingCart_files/sanBao_07.gif" class="sanbao">
        <div class="links">
            <a href="http://www.gjw.com/jituan/default.html" target="_blank">关于我们</a> <span>|</span> <a href="http://www.gjw.com/help/show-id-18.htm" target="_blank">联系我们</a> <span>|</span> <a href="http://www.gjw.com/help/show-id-19.htm" target="_blank">
            友情链接</a> <span>|</span> <a href="http://www.gjw.com/help/show-id-20.htm" target="_blank">隐私声明</a>
        </div>
        <div class="copyright">
            <p>
                Copyright® 2009-2018 gjw.com, All Rights Reserved 购酒网(上海)供应链管理有限公司 版权所有</p>
        </div>
        <div class="authentication">
            <a class="beian" href="http://www.miibeian.gov.cn/" target="_blank"></a>
            <a class="depart" target="_blank" href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20120216155829987"></a>
        </div>
    </div>
    <!--底部-->
    <div class="shadow" style="display: none; width: 100%; height: 100%; background: #000000;
        opacity: 0.2; position: fixed; z-index: 9999; top: 0; left: 0">
        <div class="loading" style="position: relative; left: 50%; margin-left: -20px; top: 48%;">
        </div>
    </div>

    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?f45b9c2a3772066fdf84b38506d4920f";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

    <script type="text/javascript">
        //计算总价
        function calcPrice(){
            var sum = 0;
            //获得所有name为check的选中状态的复选框,对其进行遍历
            $("[name='check']:checkbox:checked").each(function(){
                //获得该复选框同一行的总价文字
                var price = $(this).parent().parent().parent().parent().find(".cb_r2").text();
                sum += parseInt(price);
            });
            //显示到总价格标签中
            $("#palyMoney").text(sum);
        }
        //网页加载后
        $(function(){
            //调用计算总价
            calcPrice();
            //给name为checkAll的复选框添加点击事件
            $("[name='checkAll']:checkbox").click(function(){
                //找到所有name为check的复选框，将checked属性设置为和该复选框一样
                $("[name='check']:checkbox").prop("checked",$(this).prop("checked"));
                calcPrice();
            });
            //点击商品的复选框后重新计算价格
            $("[name='check']:checkbox").click(function(){
                calcPrice();
            });

        });
    </script>
    <#--<script type="text/javascript">
        function settle(){
            var shop = new Array();
            /*var cartPrice;*/
            var cartName = null;
           /*var cartImg;*/
            /*var cartCount;*/

            $("[name='check']:checkbox:checked").each(function(){
                //获得该复选框同一行的总价文字
                /*cartPrice = $(this).parent().parent().parent().parent().find(".cb_r2").text();*/
                cartName = $(this).parent().parent().parent().parent().find(".c12").text();
                /*cartImg = $(this).parent().parent().parent().parent().find(".cartImg").attr(value);*/
                /*cartCount = $(this).parent().parent().parent().parent().find(".fl num_input Quantity").val();*/
                shop.push(cartName);
            });
            $.ajax({
                type:"POST",
                url:"/shopping/settle",
                dataType:"json",
                contentType:"application/json",
                data:JSON.stringify(shop),
                success:function(data){
                    alert("=============")
                }
            });
        }
    </script>-->
</body></html>