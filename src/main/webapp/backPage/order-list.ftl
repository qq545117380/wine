<!DOCTYPE HTML>
<html>
<head>
<#--需要添加base-->
<#assign base=request.contextPath />
    <base id="base" href="${base}">
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <!--[if lt IE 9]>
	<script type="text/javascript" src="lib/html5shiv.js"></script>
	<script type="text/javascript" src="${base}/lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="${base}/static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="${base}/static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="${base}/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="${base}/static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="${base}/static/h-ui.admin/css/style.css" />
    <!--[if IE 6]>
	<script type="text/javascript" src="../lib/DD_belatedPNG_0.0.8a-min.js"></script>
	<script>DD_belatedPNG.fix('*');</script>
    <![endif]-->

    <style type="text/css">
        .dataTables_info{  display: none;  }
        .dataTables_paginate {  display: none;  }
        .dataTables_length{  display: none;  }
        .dataTables_filter{  display: none;  }
        ul li{ float: left;
            margin-left: 20px;}
        #fenye{margin-top: 20px;}
        .test{
            background: red;
            color: red;
        }
    </style>
    <title>订单列表</title>
</head>
<body>
<#--<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 图片管理 <span class="c-gray en">&gt;</span> 图片列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>-->
<div class="page-container">

    <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l">
		<#--<a href="javascript:;" onclick="datadel()" class="btn btn-danger radius">-->
			<#--<i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>-->
		<#--<a class="btn btn-primary radius" href="${base}/back/preAdd">-->
			<#--<i class="Hui-iconfont">&#xe600;</i> 添加商品</a></span>-->
        <span class="r">共有订单：<strong>${orderPageBean.sum}</strong> 条</span>
    </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort">
            <thead>
            <tr class="text-c">
                <th>ID</th>
                <th width="50">订单号</th>
                <th width="50">订单状态</th>
                <th width="80">产品名称</th>
                <th>产品图片</th>
                <th>产品单价 </th>
                <th>订单数量</th>
                <th>订单总额</th>
                <th>收货人</th>
                <th width="100">收货地址</th>
                <th>运费</th>
                <th >支付方式</th>
                <th>附加说明</th>

            </tr>
            </thead>
		<#--  遍历产品集合-->
		<#list orderPageBean.data as order>
            <tbody>
            <tr class="text-c">
                <td>${order.orderId}</td>
                <td>${order.orderNo}</td>
                <td id="status" class="haha">${order.orderStatus}</td>
                    <#--<td class="td-status"><span class="label label-success radius">${order.orderStatus}</span></td>-->
                <td>${order.orderName}</td>
                <td><img width="80" height="55" class="picture-thumb" src="${imagesPath}/${order.orderImg}"></td>
                <td id="price" class="hah">${order.orderDiscounts}元</td>
                <td id="num">${order.orderNum}</td>
                <td id="sumPrice"></td>
                <td>${order.user.userNikename} </td>
                <td class="text-c">${order.orderAddress}</td>
                <td>${order.orderCarriage}</td>
                <td>${order.orderPayWay}</td>
                <td>${order.orderExplain}</td>
                <#--<td class="td-manage">-->
                    <#--&lt;#&ndash;<a style="text-decoration:none" onClick="picture_stop(this,'10001')" href="javascript:;" title="下架">&ndash;&gt;-->
                    <#--&lt;#&ndash;<i class="Hui-iconfont">&#xe6de;</i></a>&ndash;&gt;-->
                    <#--<a style="text-decoration:none" class="ml-5" href="${base}/back/preUpdate/${item.itemId}/${itemPageBean.currentPage}" title="修改商品"><i class="Hui-iconfont">&#xe6df;</i></a>-->
                    <#--&lt;#&ndash;<a style="text-decoration:none" class="ml-5" onClick="picture_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
                    </td>&ndash;&gt;-->
            </tr>
            </tbody>
		</#list>
        </table>

        <!-- 分页标签 -->
        <div id="fenye">
            <ul>
			<#if orderPageBean.currentPage==1>
                <li><a></a></li>
			<#else>
                <li><a href="${base}/back/orders/${orderPageBean.currentPage-1}">上一页</a></li>
			</#if>
			<#--循环遍历出页面数-->
			<#list 1..orderPageBean.totalPage as page>
				<#if page == orderPageBean.currentPage>
                    <li><a>${page}</a></li>
				<#else >
                    <#--<#if page<6>-->
                    <li id="xuan"><a href="${base}/back/orders/${page}">${page}</a></li>
                    <#--</#if>-->
				</#if>
			</#list>

			<#if orderPageBean.currentPage==orderPageBean.totalPage >
                <li><a></a></li>
			<#else>
                <li><a href="${base}/back/orders/${orderPageBean.currentPage+1}">下一页</a> </li>
			</#if>
                <li>当前页面数是第 ${orderPageBean.currentPage} 页</li>
            </ul>
        </div>




    </div>
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${base}/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${base}/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${base}/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="${base}/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${base}/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="${base}/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${base}/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
    $(function () {
        $(".hah").each(function () {
            var price =parseInt($(this).text());
            var num = parseInt($(this).next().text());
            var sumPrice=price*num;
            $(this).next().next().text(sumPrice);
//            var price=parseInt($("#price").text());
//            var num=parseInt($("#num").text());
//            var sumPrice=price*num;
//            $("#sumPrice").text(sumPrice);
        });

            $(".haha").each(function () {
                var status =$(this).text();
//                alert(status);
                if (status == "已签收"){
                    $(this).css("color","red");
                }else if(status == "已拒收"){
                    $(this).css("color","blue");
                }else if(status == "未发货"){
                    $(this).css("color","Khaki");
                }
            })


    })




    //	$(function () {
    //		$("#xuan").click(function () {
    //			$(this).addClass("test")；
    //			$("#xuan").not(this).removeClass("test")；
    //        })
    //    })




</script>
</body>
</html>