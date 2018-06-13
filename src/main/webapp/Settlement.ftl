<!DOCTYPE html>
<!-- saved from url=(0037)http://order.gjw.com/order/Settlement -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<title></title>
		<link rel="stylesheet" type="text/css" href="./Settlement_files/main.css">
        <script src="./Settlement_files/hm.js.下载"></script><script src="./Settlement_files/jquery-1.7.1.min.js.下载"></script>
        <script>
            document.domain = "gjw.com";
        </script>
        <script src="./Settlement_files/layer.js.下载"></script><link rel="stylesheet" href="./Settlement_files/layer.css" id="layui_layer_skinlayercss" style="">
        <script src="./Settlement_files/main.min.js.下载"></script>
	</head>

	<body rlt="1" style="">
		<div class="topBar" id="topBar">
			<div class="topBarCon w990">
				<div class="topBarFl fl">
					<ul>
						<li><span>欢迎来到购酒网！</span></li>
						<li>

							<div class="vip">
                    <a href="javascript:void(0)" class="cd5" style=" color:red;">不见⊙Д⊙不散</a>   <a href="Javascript:Exit()">退出</a>  							</div>
						</li>

					</ul>
				</div>
				<div class="miniMenu fr">
					<ul>
						<li class="m1">
							<a class="cart-a" href="http://order.gjw.com/order/Cart.html" rel="nofollow"><b></b>购物车<strong id="head_cart_no">1</strong>件<u></u></a>
							<div class="mini-cart hide" style="display: none;">
								<div class="no-list hide">
									您的购物车中暂时没有商品。</div>
								<div class="cart-list" id="head_cart">
									<span class="lineHeight_30">您的购物车中暂时没有商品。</span>
								</div>
							</div>
						</li>
						<li class="m2">
							<a href="http://order.gjw.com/UserCenter/MyOrder.html" rel="nofollow">
								我的订单</a>
						</li>
						<li class="m3">
							<a class="user-a" href="http://order.gjw.com/UserCenter/MyOrder.html" rel="nofollow">
								用户中心<u></u></a>
							<div class="miniMenu-child hide" style="display: none;">
								<dl> 
									<dd>
										<a href="http://order.gjw.com/UserCenter/MyComment.html" rel="nofollow">商品评论</a>
									</dd>
									<dd>
										<a href="http://order.gjw.com/UserCenter/MyFav.html" rel="nofollow">收藏夹</a>
									</dd>
									<dd>
										<a href="http://order.gjw.com/UserCenter/MyVoucher.html" rel="nofollow">我的电子券</a>
									</dd>
								</dl>
							</div>
						</li>
						<li class="m4">
							<a href="http://www.gjw.com/help/show.htm" rel="nofollow">
								帮助</a>
						</li>
						<li class="m55">
							<a href="http://order.gjw.com/FeedBack/default.htm" rel="nofollow">
								提建议</a>
						</li>
						<li class="m66">
							<a href="http://weibo.com/320101212" rel="nofollow">微博</a>
						</li> 
					</ul>
				</div>
			</div>
		</div>

		<!--头部 e-->
		<div class="check_wrap">
			<div class="check_header botShodow">
				<a href="http://www.gjw.com/" title="购酒网">
					<img src="./Settlement_files/logo1.jpg" alt="购酒网"></a>
				<span style="position:relative;">
                    <span class="logoNextText">结算页</span>
				</span>
				<div id="step" class="step2">
				</div>
			</div>
			<div class="goodBox">
				<div class="Consignee_msg botShodow">
					<div class="stepTit">
						<strong>收货人信息</strong>&nbsp;&nbsp;<span>|&nbsp;&nbsp; <a id="addAddr">新增收货地址</a></span>
						<input name="TypeID" type="hidden" id="TypeID" value="0">
					</div>

					<div id="consignee_addr">
						<ul class="addr_list listoff">
							<li>
								<div class="radio_check fl">
									<span id="radio0Span" data-id="177298" class="gjw_radio active">DAAD<b>&nbsp;</b></span><input type="radio" id="radio150691" value="150691" name="address" class="hiddenRadio" checked="checked" data-text="王艺凯" style="display: none;">
								</div>
								<div class="userMsgBox">
									<div class="userMsg fl">
										<span class="userName">
                                        DAAD</span> <span class="address">
                                            广东省-韶关市-武江区-sdsad</span> <span class="phoneNumber">
                                                15201781189</span>
									</div>
									<div class="opBtn fr" style="display:none;">
										<a href="javascript:void(0);" class="delteteAddr DelAddr">删除</a>
										<a href="javascript:void(0);" class="revise EditAddr">修改</a>
									</div>
								</div>
							</li>

						</ul>
						<a class="more_list" id="more_list" style="display: none;"><span>收起/展开</span><i class="up">&nbsp;</i></a>
					</div>

				 
					<div class="payBox botShodow">
						<div class="stepTit">
							<strong>支付方式</strong></div>
						<div class="payList" id="payList">

							<span>
                        <span id="onlinePaySpan" class="gjw_radio  active">在线支付<b>&nbsp;</b></span><input type="radio" value="4" id="onlinePay" name="pay" checked="" class="payRadio" data-text="在线支付" style="display: none;"></span>
							<span>
                        <span id="cashPaySpan" class="gjw_radio">货到付款<b>&nbsp;</b></span><input type="radio" value="1" id="cashPay" name="pay" class="payRadio" data-text="货到付款" style="display: none;"></span>

						</div>
					</div>
					<div class="payBox botShodow">
						<div class="stepTit">
							<strong>发票信息</strong></div>
						<div class="check">
							<input type="checkbox" id="fapiaoCheck"><span>&nbsp;需要发票</span>
						</div>
						<div class="faPiaoBox" id="faPiaoBox" style="display: none;">
							<span class="bitian">*</span>
							<select class="field">
								<option value="0">个人</option>
								<option value="1">公司</option>
							</select>
							<span class="mgn_l">名称:</span>
							<input type="text" id="txtInvoiceTitle" class="gjwText">
							<span class="shui" style=" display:none;">   
                    
                       <span class="mgn_l">税号:</span>
							<input type="text" id="txtshui" class="gjwText">
							</span>
							<span class="mgn_l">开票内容:</span>明细

						</div>
						<p class="tishi">
							如需开具增值税发票请联系在线客服或拨打客服电话400-722-1919</p>
					</div>
					<div class="goodList botShodow">
						<div class="stepTit">
							<strong class="fl">送货清单</strong>
							<a href="http://order.gjw.com/order/cart" class="fr">返回购物车修改</a>
						</div>
						<table width="922" align="center" border="1" bordercolor="#e6e6e6">
							<tbody>
								<tr>
									<th colspan="2">
										商品名称
									</th>
									<th width="100">
										单价
									</th>
									<th width="100">
										数量
									</th>
									<th width="100">
										小计
									</th>
								</tr>

								<tr>
									<td width="100">
										<a href="http://www.gjw.com/product/item-id-35.htm" target="_blank">
											<img width="50" height="50" src="./Settlement_files/cb2a83e93b5a46c493d01aceb5f3c4ab_0.jpg" title="52度 剑南春 500ml"></a>
									</td>
									<td>
										<a href="http://www.gjw.com/product/item-id-35.htm" target="_blank">
											52度 剑南春 500ml</a><br>
                                                      

									</td>
									<td>
										¥398
									</td>
									<td>
										1
									</td>
									<td>
										¥398
									</td>
								</tr>								<!--赠品s-->

								<!--赠品e-->
                                <tr>
                                <td colspan="5">
                                </td>
                            </tr>

							</tbody>
						</table>
					</div>
					<div class="orderCoupon">
						<div class="item">
							<div class="toggleTitle">
								<a class="toggleBtn"></a>&nbsp;<span>电子券抵扣</span>
							</div>
							<div class="toggleBox" style="display: none;">
								<div id="coupon" class="scroll-pane">

                                    <input type="hidden" id="lastSelVoucher">
									<font color="red">购物车内有禁用优惠券商品，订单无法使用优惠券.</font>


								</div>
								<div class="clear"></div>
								<div class="chb" style="display: none;"><input type="checkbox" id="chb"><label for="chb">显示更多（展开）</label></div>
								<div class="clear"></div>
								<div id="cashCoupon" class="cart_dot pt5" style="display: none;">
									<p>
										使用新的电子券（
										<a target="_blank" href="http://order.gjw.com/User/MyVoucher.htm">查看我的电子券</a>）</p>
									<div class="cartBox">
										卡号：<input type="text" id="txtNumber" autocomplete="off" name="txtNumber" maxlength="30"> 密码：
										<input type="password" id="txtPassword" autocomplete="off" name="txtPassword" maxlength="20">
										<a href="javascript:void(0);" id="checkedCash" class="checkedCash">验证电子券</a>
									</div>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="toggleTitle">
								<a class="toggleBtn"></a>&nbsp;<span>账户积分使用</span>
							</div>
							<div class="toggleBox" style="display: none;">
								<div class="cartBox">
									<input type="text" value="" id="txtScore" name="txtAccount" maxlength="4" class="yuEr" style="display: none;">&nbsp; 积分支付(账户积分：
									<span id="Span1">0</span><span id="sps"></span>) <span id="Span2" style="display: none;">
                                        &nbsp;已成功冲抵&nbsp;</span>
									<a class="red cur btnscore " id="AScore" style="text-decoration: none; color:#FFF; line-height:24px;">立即使用</a>
									<a class="red cur btnscore r" id="ARest2" style="display: none; cursor: pointer; text-decoration: none; color:#FFF; line-height:24px;">取消使用</a>

								</div>
							</div>
						</div>

						<div class="item">
							<div class="toggleTitle">
								<a class="toggleBtn"></a>&nbsp;<span>账户余额使用</span>
							</div>
							<div class="toggleBox" style="display: none;">
								<div class="cartBox">
									<input type="text" value="" id="txtAccount" name="txtAccount" maxlength="5" class="yuEr" style="display:none;">&nbsp; 余额支付(账户余额：
									<span id="spAccount">0</span><span id="SpAt"></span>元) <span id="spOk" style="display: none;">
                                        &nbsp;已成功冲抵&nbsp;</span>
									<a class="red cur btnscore r1" id="AOk" style="text-decoration: none; color:#FFF; line-height:24px;">立即使用</a>
									<a class="red cur btnscore r1" id="ARest" style="display: none; cursor: pointer; text-decoration: none; color:#FFF; line-height:24px;">取消使用</a>
								</div>
							</div>
						</div>
						<div class="item">
							<input name="hd_flag" type="hidden" id="hd_flag" value="True">
							<div class="toggleTitle">
								<a class="toggleBtn"></a>&nbsp;<span>附加说明</span>
							</div>
							<div class="toggleBox" style="display: none;">
								<div class="cartBox">
									<textarea id="txtIntro" placeholder="请勿再次输入有关配送地址、支付方式、发票信息等信息。谢谢！"></textarea>
								</div>
							</div>
						</div>
						<div class="statistic">
							<ul>
								<li><strong>商品金额共计：
                        <label id="lbSumProMoney" class="fwb">¥398.00</label></strong> </li>
								<li>运费：¥<label id="lbFreight">0</label></li>
								<li><strong>电子券抵扣：
                        ¥ -<label id="lbVoucherMoney" class="fwb">0</label></strong> </li>
								<li>账户余额抵扣： ¥ -<label id="lbAccount">0</label> </li>
								<li>账户积分抵扣： ¥ -<label id="LbScore">0</label> </li>
								<li>满额即减优惠： ¥ -<label id="lbSumReductionMoney">0</label> </li>
								<li>组合优惠： ¥ -<label id="lbCombinationMoney">0</label></li>
								<li>在线支付优惠： ¥ -<label id="lbOnlinePayReduceM">0</label></li>
							</ul>
							<p class="total">你总共需要为订单支付:<b id="SumMoney">¥398.00</b></p>
                            <input type="hidden" value="0" id="baoyou">
						</div>
					</div>
					<div class="payBtnBox">
						<a href="javascript:void(0);" id="btnOk" class="payBtn fr"></a>
					</div>
				</div>
			</div>
		</div>
		<!--主体 e-->
		<div class="foot" id="foot">
			<img src="./Settlement_files/sanBao_07.gif" class="sanbao">
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
		<!--尾部 e-->

	
	<script src="./Settlement_files/jquery-1.7.1.min.js.下载" type="text/javascript" charset="utf-8"></script>
    <script src="./Settlement_files/main.min.js(1).下载" type="text/javascript"></script>
    	<script src="./Settlement_files/layer.js.下载"></script>
    <script src="./Settlement_files/LoginBox.js.下载"></script>
<script src="./Settlement_files/ReceiveAddBox.js.下载"></script>
     <script type="text/javascript">
         document.domain = "gjw.com";
         $(".toggleTitle").click(function () {
             $(this).parent().children(".toggleBox").toggle();
         })
         $(".payList .gjw_radio").click(function () {
             $(".payList .gjw_radio").removeClass("active");
             $(this).addClass("active");
         })
         $(".addr_list li .gjw_radio").click(function () {
             $(".addr_list li .gjw_radio").removeClass("active");
             $(this).addClass("active");

             var dd = $(".addr_list .active").data("id");
             
             $.ajax({
                 //提交数据的类型 POST GET
                 type: "POST",
                 //提交的网址
                 url: "/Order_Api/GetYunFei",
                 //提交的数据
                 data: { sumProMoney: moneyFormat($("#lbSumProMoney").html()), addrid: dd, isbaoyou: $("#baoyou").val() },
                 //返回数据的格式
                 async: false,
                 datatype: "json", //"xml", "html", "script", "json", "jsonp", "text".
                 //在请求之前调用的函数
                 success: function (data) {
                     //console.log(data.Data);

                     var json = data;
                     if (json.Success == 1) {
                         var yunfei = json.Data;
                                                  
                         $("#lbFreight").html(yunfei);
                         var lbSumProMoney = moneyFormat($("#lbSumProMoney").html());
                         var lbSumReductionMoney = moneyFormat($("#lbSumReductionMoney").html());
                        
                         //console.log(lbSumProMoney - lbSumReductionMoney + yunfei);
                            
                         $("#SumMoney").html(lbSumProMoney - lbSumReductionMoney + yunfei);
                         $('#coupon input[type="radio"]:checked"').attr("checked", false);
                         $("#lbVoucherMoney").html(0);
                         $(".dis").css("display", "none");

                         PayMoney();
                     }
                 }, error: function (xhr) { alert(xhr.responseText) }
             });
         })
         function act(num) {
             if ($(".addr_list li .gjw_radio") != undefined) {
                 $(".addr_list li:nth-child(" + num + ")").children().children(".gjw_radio").addClass("active");

                
             }
         }
         act(1);


     </script>

</body></html>