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
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
    <span class="c-gray en">&gt;</span> 图片管理 <span class="c-gray en">&gt;
    </span> 图片列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">

    <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l">
		<#--<a href="javascript:;" onclick="datadel()" class="btn btn-danger radius">-->
			<#--<i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>-->
		<a class="btn btn-primary radius" href="javascript:deleteLog();">
			<i class="Hui-iconfont">&#xe6e2;</i> 批量删除日志</a></span>
        <span class="r">共有登录日志：<strong>${myLogPageBean.sum}</strong> 条</span>
    </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort">
            <thead>
            <tr class="text-c">
                <th width="40"><input name="checkth" type="checkbox" value=""></th>
                <th width="50">ID</th>
                <th width="100">用户昵称</th>
                <th width="150">登录时间</th>
                <#--<th width="100">操作</th>-->
            </tr>
            </thead>
		<#--  遍历产品集合-->
		<#list myLogPageBean.data as log>
            <tbody>
            <tr class="text-c">
                <td>
                    <input name="check" type="checkbox" value="">
                </td>
                <td>
                    <span class="id" >${log.logId}</span>
                </td>
                <td>${log.logUserName}</td>
                <#--?string('yyyy-MM-dd HH:mm:ss')-->
                <td>${log.logTime}</td>
                <#--<td class="td-manage">-->
                    <#--&lt;#&ndash;<a style="text-decoration:none" href="javascript:if(confirm('确认删除?'))&ndash;&gt;-->
                    <#--&lt;#&ndash;location.href="${base}/back/delete/${users.id}" title="删除">&ndash;&gt;-->
                        <#--&lt;#&ndash;<a style="text-decoration:none" href="javascript:deleteUser(userId=${users.id});" title="删除">&ndash;&gt;-->
                    <#--&lt;#&ndash;<i class="Hui-iconfont">&#xe6de;</i></a>&ndash;&gt;-->
                    <#--&lt;#&ndash;<a style="text-decoration:none" class="ml-5" href="javascript:updateUser(userId=${users.id});" title="修改"><i class="Hui-iconfont">&#xe6df;</i></a>&ndash;&gt;-->
                <#--</td>-->
            </tr>
            </tbody>
		</#list>
        </table>

        <!-- 分页标签 -->
        <div id="fenye">
            <ul>
			<#if myLogPageBean.currentPage==1>
                <#--<li><a>上一页</a></li>-->
			<#else>
                <li><a href="${base}/back/log/${myLogPageBean.currentPage-1}">上一页</a></li>
			</#if>
			<#--循环遍历出页面数-->
			<#list 1..myLogPageBean.totalPage as page>
				<#if page == myLogPageBean.currentPage>
                    <li><a>${page}</a></li>
				<#else >
                    <#--<#if page<6>-->
                    <li id="xuan"><a href="${base}/back/log/${page}">${page}</a></li>
                    <#--</#if>-->
				</#if>
			</#list>

			<#if myLogPageBean.currentPage==myLogPageBean.totalPage >
                <#--<li><a>下一页</a></li>-->
			<#else>
                <li><a href="${base}/back/log/${myLogPageBean.currentPage+1}">下一页</a> </li>
			</#if>
                <li>当前页面数是第 ${myLogPageBean.currentPage} 页</li>
            </ul>
        </div>

            <#--<input type="text" value=" ${currentUsers.userType}">-->

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
    function add() {
//        var usersType =$("#type").text();
        var usersType="${currentUsers.userType}";
//        alert(usersType);
        if (usersType == "超级管理员"){
            window.location.href="${base}/back/addUser";
        }else {
            alert("不好意思，只有超级管理员，有添加权限");
        }

    }

    //批量删除日志
    function deleteLog() {
        var userType="${currentUsers.userType}"
        if(userType=="超级管理员"){
            var logArray = new Array();
            var i=0;
            //遍历所有被选中的日志
            $("[name='check']:checkbox:checked").each(function (){
                var id =parseInt($(this).parent().parent().find(".id").text());
//            var id = parseInt($(this).parent().next('td').find(".id").text());
                logArray.push(id);
//            logArray[i++]={"id":id}
                alert(id);
            });
            var log =(JSON.stringify(logArray));
            $.ajax({
                type:'post',
                url:'${base}/back/log/delete',
//            dataType:'json',
                contentType :'application/json;charset=utf-8',
                data:log,
                success:function (result) {
                    if (result=="ok"){
                        window.location.href="${base}/back/log/1"
                    }else {
                        alert("不好意思，请稍后再试")
                    }
                }
            });
        }else {
            alert("不好意思,只有超级管理员,有删除权限")
        }

    }




</script>
</body>
</html>