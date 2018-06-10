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
    <title>添加商品</title>
    <link href="${base}/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="page-container">
    <form class="form form-horizontal" id="form-article-add"
    action="${base}/back/add" method="post" enctype="multipart/form-data" >
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>产品名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="itemName">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">产品描述：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="itemDescribe">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">产品原价：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="regularPrice">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">活动价格：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="activityPrice">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">所属活动：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="itemPromotionMsg">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">产品积分：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="itemIntegral">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">产品品牌：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="itemBrand">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">产品编号：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="itemSku">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">产品容量：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="itemContent">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">酒精度数：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="itemProof">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">产品赠品：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="itemReticule">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">产品香型：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="itemFlavour">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">产品箱规：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="itemCartonSpec">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">产品规格：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="itemSpec">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">产品状态：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="" name="itemStatus">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">产品图片：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="file" class="input-text" value="" placeholder="" id="" name="file">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">添加商品：</label>
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