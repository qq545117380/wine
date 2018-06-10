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
    <title>图片列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 图片管理 <span class="c-gray en">&gt;</span> 图片列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">

    <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l">
		<a href="javascript:;" onclick="datadel()" class="btn btn-danger radius">
			<i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
		<a class="btn btn-primary radius" href="${base}/back/preAdd">
			<i class="Hui-iconfont">&#xe600;</i> 添加商品</a></span>
        <span class="r">共有商品：<strong>${itemNum}</strong> 条</span>
    </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort">
            <thead>
            <tr class="text-c">
                <th width="40"><input name="" type="checkbox" value=""></th>
                <th width="50">ID</th>
                <th width="150">产品名称</th>
                <th>产品图片</th>
                <th width="100">所属活动</th>
                <th width="100">产品价格</th>
                <th width="100">产品品牌</th>
                <th width="60">发布状态</th>
                <th width="100">操作</th>
            </tr>
            </thead>
		<#--  遍历产品集合-->
		<#list itemPageBean.data as item>
            <tbody>
            <tr class="text-c">
                <td><input name="" type="checkbox" value=""></td>
                <td>${item.itemId}</td>
                <td>${item.itemName}</td>
			<#--<td><a href="javascript:;" onClick="picture_edit('图库编辑','picture-show.html','10001')"><img width="210" class="picture-thumb" src="temp/200x150.jpg"></a></td>-->
                <td><img width="100" class="picture-thumb" src="${imagesPath}/${item.img1}"></td>
                <td>${item.itemPromotionMsg}</td>
			<#--<td class="text-l"><a class="maincolor" href="javascript:;" onClick="picture_edit('图库编辑','picture-show.html','10001')">现代简约 白色 餐厅</a></td>-->
                <td>${item.regularPrice} 元</td>
                <td class="text-c">${item.itemBrand}</td>
                <td class="td-status"><span class="label label-success radius">${item.itemStatus}</span></td>
                <td class="td-manage"><a style="text-decoration:none" onClick="picture_stop(this,'10001')" href="javascript:;" title="下架">
                    <i class="Hui-iconfont">&#xe6de;</i></a>
                    <a style="text-decoration:none" class="ml-5" onClick="picture_edit('图库编辑','picture-add.html','10001')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
                    <a style="text-decoration:none" class="ml-5" onClick="picture_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
            </tr>
            </tbody>
		</#list>
        </table>

        <!-- 分页标签 -->
        <div id="fenye">
            <ul>
			<#if itemPageBean.currentPage==1>
                <li><a>上一页</a></li>
			<#else>
                <li><a href="${base}/back/item/${itemPageBean.currentPage-1}">上一页</a></li>
			</#if>
			<#--循环遍历出页面数-->
			<#list 1..itemPageBean.totalPage as page>
				<#if page == itemPageBean.currentPage>
                    <li><a>${page}</a></li>
				<#else>
                    <li id="xuan"><a href="${base}/back/item/${page}">${page}</a></li>
				</#if>
			</#list>

			<#if itemPageBean.currentPage==itemPageBean.totalPage >
                <li><a>下一页</a></li>
			<#else>
                <li><a href="${base}/back/item/${itemPageBean.currentPage+1}">下一页</a> </li>
			</#if>
                <li>当前页面数是第 ${itemPageBean.currentPage} 页</li>
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
    $('.table-sort').dataTable({
        "aaSorting": [[ 1, "desc" ]],//默认第几个排序
        "bStateSave": true,//状态保存
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {"orderable":false,"aTargets":[0,8]}// 制定列不参与排序
        ]
    });
    //	$(function () {
    //		$("#xuan").click(function () {
    //			$(this).addClass("test")；
    //			$("#xuan").not(this).removeClass("test")；
    //        })
    //    })




</script>
</body>
</html>