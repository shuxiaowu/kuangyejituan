<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:70:"D:\phpStudy\PHPTutorial\WWW\kuangye/app/home\view\index\oretrading.tpl";i:1553335320;s:67:"D:\phpStudy\PHPTutorial\WWW\kuangye\app\home\view\common\common.tpl";i:1553325227;s:67:"D:\phpStudy\PHPTutorial\WWW\kuangye\app\home\view\common\header.tpl";i:1553328860;s:67:"D:\phpStudy\PHPTutorial\WWW\kuangye\app\home\view\common\footer.tpl";i:1553243640;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<title><?php if(empty($title) || (($title instanceof \think\Collection || $title instanceof \think\Paginator ) && $title->isEmpty())): ?><?php echo $metatitle; else: ?><?php echo $title; ?> - <?php echo $metatitle; endif; ?></title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="renderer" content="webkit" />
<meta name="description" content="<?php echo $metades; ?>" />
<meta name="keywords" content="<?php echo $metakey; ?>" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/kuangye/public/home/css/common.css?v=2" />
<link rel="stylesheet" href="/kuangye/public/home/css/bootstrap.css" />
<link rel="shortcut icon" href="/kuangye/public/home/images/favicon.ico" />
<script src="/kuangye/public/home/js/jquery.min.js"></script>
<script src="/kuangye/public/home/js/bootstrap.js"></script>
<!-- <script src="/kuangye/public/home/js/common.js"></script> -->

	<link rel="stylesheet" href="/kuangye/public/home/css/fileinput.min.css">
	<script src="/kuangye/public/home/js/fileinput.min.js"></script>
	<script src="/kuangye/public/home/js/zh.js"></script>

<script type="text/javascript">
 var think   = '<?php echo $think; ?>/home';
 var img     = '/kuangye/public/home/images';
 var pic     = '/kuangye/uploads/images/';
</script>
</head>
<body>
<div id="headtop">
	<div class="headtop-box">
		<div class="pull-left headtop-left">
			<img src="/kuangye/public/home/images/huizhang.png">
			<p>国际矿业联盟，维护全球矿业合法权益。</p>
		</div>
		<div class="pull-right headtop-right">
			<a href="">设为首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="">加入收藏</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="">English</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="">注册</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="">登入</a>
		</div>
	</div>
</div>
<!--  -->
<div id="headdown">
	<div class="headdown-box">
		<div class="pull-left headdownleft">
			<a href="" style="display:block;"><img src="/kuangye/public/home/images/guoji_logo.png"></a>
		</div>
		<div class="col-lg-6 pull-right searchtop">
			<form action="<?php echo url('Index/search'); ?>" method="post" name="myform">
				<div class="input-group">
					<input type="text" name="keyword" class="form-control" placeholder="请输入关键字">
					<span class="input-group-btn">
						<button class="btn btn-default seachbtn" name="btn-submit" value="搜索" type="submit" style="background:#ed1515"><span class="glyphicons icon-sousuo" aria-hidden="true"></span></button>
					</span>
				</div>
		</div>
	</div>
</div>
<!--  -->
<div id="nav">
	<div class="nav-box">
		<ul class="nav-ul">
			<li><a href="<?php echo url('Index/index'); ?>">首页</a></li>
			<li><a href="<?php echo url('Index/about'); ?>">关于联盟</a></li>
			<li><a href="<?php echo url('News/newsinfo'); ?>">矿业新闻</a></li>
			<li><a href="<?php echo url('Index/service'); ?>">矿业服务</a></li>
			<li><a href="<?php echo url('Index/oretrading'); ?>">矿权交易</a></li>
			<li><a href="">供求信息</a></li>
			<li><a href="">会议会展</a></li>
			<li><a href="">联盟会员</a></li>
			<li><a href="<?php echo url('Index/contact'); ?>">联系我们</a></li>
		</ul>
	</div>
</div>

	<!-- 大图 -->
	<div id="homepage">
		<div class="bd">
			<img src="<?php echo upic($banner['pic']); ?>">
		</div>
	</div>
	<!--  -->
	<div id="acrossline">
		<div class="container">
			<a href="">矿权交易</a>
		</div>
	</div>
	<!--  -->
	<div class="mainbox">
		<div class="container kv-main formmain">
			<form enctype="multipart/form-data">
				
				<div class="row formtitle">
					<div class="col-lg-1 prename">
						信息标题：
					</div>
					<div class="col-lg-4">
						<input type="text" name="msgtitle" class="form-control" placeholder="信息标题">
					</div>
				</div>
				<div class="row formtitle">
					<div class="col-lg-1 prename">
						隶属栏目：
					</div>
					<div class="col-lg-1">
						<!-- 样式1 -->
						<select class="form-control" name="columm">
							<option>-请选择-</option>
							<option>采矿权</option>
							<option>探矿权</option>
						</select>
					</div>
				</div>
				<div class="row formtitle">
					<div class="col-lg-1 prename">
						面积：
					</div>
					<div class="col-lg-4">
						<input type="text" name="msgarea" class="form-control" placeholder="面积">
					</div>
				</div>
				<div class="row formtitle">
					<div class="col-lg-1 prename">
						储量：
					</div>
					<div class="col-lg-4">
						<input type="text" name="msgcount" class="form-control" placeholder="储量">
					</div>
				</div>
				<div class="row formtitle">
					<div class="col-lg-1 prename">
						信息类型：
					</div>
					<div class="col-lg-1">
						<!-- 样式1 -->
						<select class="form-control" name="msgtype">
							<option>-请选择-</option>
							<option>金矿</option>
							<option>银矿</option>
							<option>铁矿</option>
						</select>
					</div>
				</div>
				<div class="row formtitle formtitle">
					<div class="col-lg-1 prename">
						所在地：
					</div>
					<div data-toggle="distpicker">
						<div class="form-group col-lg-3" style="margin-right:10px;">
							<label class="sr-only" for="province7">Province</label>
							<select class="form-control" id="province7" name="province">
							
							</select>
						</div>
						<div class="form-group col-lg-3">
							<label class="sr-only" for="city7">City</label>
							<select class="form-control" id="city7" name="city">
								
							</select>
						</div>
					</div>
				</div>
				<div class="row formtitle">
					<div class="col-lg-1 prename">
						勘察程度：
					</div>
					<div class="col-lg-4">
						<input type="text" name="degree" class="form-control" placeholder="勘察程度">
					</div>
				</div>
				<div class="row formtitle">
					<div class="col-lg-1 prename">
						合作方式：
					</div>
					<div class="col-lg-4">
						<input type="text" name="cooperation" class="form-control" placeholder="合作方式">
					</div>
				</div>
				<div class="row formtitle">
					<div class="col-lg-1 prename">
						企业名称：
					</div>
					<div class="col-lg-4">
						<input type="text" name="coopername" class="form-control" placeholder="企业名称">
					</div>
				</div>
				<div class="row formtitle">
					<div class="col-lg-1 prename">
						联系人：
					</div>
					<div class="col-lg-4">
						<input type="text" name="linkperson" class="form-control" placeholder="联系人">
					</div>
				</div>
				<div class="row formtitle">
					<div class="col-lg-1 prename">
						联系电话：
					</div>
					<div class="col-lg-4">
						<input type="text" name="linktel" class="form-control" placeholder="联系电话">
					</div>
				</div>
				<div class="row formtitle">
					<div class="col-lg-1 prename">
						E-mail：
					</div>
					<div class="col-lg-4">
						<input type="text" name="email" class="form-control" placeholder="E-mail">
					</div>
				</div>
				<div class="row formtitle">
					<div class="col-lg-1 prename">
						详细地址：
					</div>
					<div class="col-lg-4">
						<input type="text" name="detailAddress" class="form-control" placeholder="详细地址">
					</div>
				</div>
				<div class="row formtitle remark" style="height:100px">
					<div class="col-lg-1 prename">
						信息描述：
					</div>
					<div class="col-lg-4">
						<textarea name="remark" class="form-control" placeholder="信息描述" style="height:100px" ></textarea>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-1 prename uploadpic">
						上传图片：
					</div>
					<div class="col-lg-8">
						<input id="file-1" type="file" multiple class="file" data-overwrite-initial="false" data-min-file-count="2" name="images">
					</div>
				</div>
				<button type="button" class="btn btn-primary btn-lg btn-block submit-btn">确认提交</button>
			</form>
		</div>
	</body>
	<script src="/kuangye/public/home/js/distpicker.data.js"></script>
	<script src="/kuangye/public/home/js/distpicker.js"></script>
	<script src="/kuangye/public/home/js/main.js"></script>
	<script>
            // 初始化filleinput控件  第一次初始化
            function initFileInput(ctrlName, uploadUrl) {
            	var control = $('#' + ctrlName);
            	control.fileinput({
                    language: 'zh', //设置语言
                    uploadUrl: uploadUrl, //上传的地址
                    allowedFileExtensions: ['jpg', 'png'], //接收的文件后缀
                    showUpload: true, //是否显示上传按钮
                    showCaption: false, //是否显示标题
                    maxFileSize: 1000, //图片最大尺寸kb 为0不限制
                    maxFilesNum: 3, //最多上传图片
                    overwriteInitial: false, //不覆盖已上传的图片
                    browseClass: "btn btn-info", //按钮样式 
                    dropZoneEnabled: true, //是否显示拖拽区域
                    previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
                    msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
                });
            }

            //初始化fileinput控件,第一次初始化 (控件id，上传地址)
            initFileInput("file-1", "uploadImg");

            // 监听事件
            $("#file-1").on("fileuploaded", function(event, data, previewId, index) {
                // 上传地址
                console.log(data);
            });
        </script>
    </div>

<div id="foot">
	<div class="foot-down">
		<div class="container">
			<div class="footnav">
				<div class="pull-left" style="width: 94px;margin-top:42px">
					<img src="/kuangye/public/home/images/footlogo.png" width="100%" height="100%">
				</div>
				<div class="footleft">
					<div class="nav-down">
						<a href="<?php echo url('/'); ?>">首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="<?php echo url('Index/about'); ?>">关于联盟</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="<?php echo url('News/index'); ?>">矿业新闻</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="<?php echo url('News/product'); ?>">矿业服务</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="<?php echo url('Index/service'); ?>">矿权交易</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="<?php echo url('Index/hr'); ?>">供求信息</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="<?php echo url('Index/message'); ?>">会议会展</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="<?php echo url('Index/contact'); ?>">联盟会员</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="<?php echo url('Index/contact'); ?>">联系我们</a>
					</div>
					<div class="copyright">联系电话：<?php echo $sysconf['tel']; ?> / <?php echo $sysconf['mobile']; ?>　邮箱： <?php echo $sysconf['email']; ?>　地址：<?php echo $sysconf['address']; ?></div>
					<div class="contact-foot">© Copyright 2019  All rights reserved. 版权所有：<?php echo $sysconf['companyname']; ?>　技术支持：<a href="http://www.jxbh.cn/">百恒网络</a> <a href="sitemap.xml" style="color:#585858">[xml]</a></div>				
				</div>
				<div class="footright">
					<div class="weixinpic">
						<img src="<?php echo upic($sysconf['weixinpic']); ?>" width="100%">

					</div>
					<div class="wx-font">扫一扫，关注我们</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php if(!(empty($sysconf) || (($sysconf instanceof \think\Collection || $sysconf instanceof \think\Paginator ) && $sysconf->isEmpty()))): ?><?php echo $sysconf['sys_code']; endif; ?>
</body>
</html>
