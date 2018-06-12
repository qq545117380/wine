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
    <script type="text/javascript" src="lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="${base}/static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="${base}/static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="${base}/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="${base}/static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="${base}/static/h-ui.admin/css/style.css" />
    <!--[if IE 6]>
    <script type="text/javascript" src="${base}/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>添加管理员</title>
    <link href="${base}/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="page-container">
    <form class="form form-horizontal" id="form-article-add"
    action="${base}/back/addUsers" method="post" enctype="multipart/form-data" >
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>用户账号：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="username">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">用户密码：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="password">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">密码盐：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="passwordSalt">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">用户名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="nickname">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">用户性别：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="sex">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">用户类型：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="userType">
            </div>
        </div>


        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">添加管理员：</label>
            <div class="formControls col-xs-8 col-sm-9">
               <input type="submit" value="确认添加">
            </div>
        </div>

    </form>
</div>


<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${base}/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${base}/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${base}/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="${base}/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${base}/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="${base}/lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript" src="${base}/lib/webuploader/0.1.5/webuploader.min.js"></script>
<script type="text/javascript">

</script>
</body>
</html>