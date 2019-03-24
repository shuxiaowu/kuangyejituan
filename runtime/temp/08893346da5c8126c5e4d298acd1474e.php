<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:67:"D:\phpStudy\PHPTutorial\WWW\kuangye/app/home\view\index\service.tpl";i:1553313816;s:67:"D:\phpStudy\PHPTutorial\WWW\kuangye\app\home\view\common\common.tpl";i:1553325227;s:67:"D:\phpStudy\PHPTutorial\WWW\kuangye\app\home\view\common\header.tpl";i:1553328860;s:67:"D:\phpStudy\PHPTutorial\WWW\kuangye\app\home\view\common\inside.tpl";i:1553239675;s:67:"D:\phpStudy\PHPTutorial\WWW\kuangye\app\home\view\common\footer.tpl";i:1553243640;}*/ ?>
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
<div class="mainbox">
	<div class="main fixed">
		<div class="left leftnav wow fadeInLeft animated">
			<div class="sideMenu">
				<div class="sideTit"> <a>
					<h3>矿业服务</h3>
					<p>Service</p>
				</a> </div>
				<?php if(is_array($datatype) || $datatype instanceof \think\Collection || $datatype instanceof \think\Paginator): $i = 0; $__LIST__ = $datatype;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?>
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading <?php if($Id == $obj['Id']): ?>active<?php endif; ?>">
								<h4 class="panel-title">
									<a href="<?php echo url('Index/service','Id='.$obj['Id']); ?>">
										<?php echo $obj['topic']; ?>
									</a>
								</h4>
							</div>
						</div>
					</div>
				<?php endforeach; endif; else: echo "" ;endif; ?>
			</div>
			<div class="sideContact">
	<div class="sideContactTit"><a href="javascript:;">联系我们</a></div>
	<div class="sideContactBox">
		<div style="text-align:center;font-size:16px;font-weight:800;"><?php echo $sysconf['companyname']; ?></div>
		<div class="inside-z">地址：<?php echo $sysconf['address']; ?></div>
		<div class="inside-z">电话：<?php echo $sysconf['tel']; ?></div>
	</div>
</div>
			</div>
			<!--left end-->
			<div class="right-con wow fadeInUp animated">
				<div class="path">
					<h3><?php echo $title; ?></h3>
					<div class="pathdiv"> <a href="<?php echo url('Index/index'); ?>">主页</a><span>&gt;</span><a href="<?php echo url('Index/service'); ?>">矿业服务</a><span>&gt;</span><a href="" class="on"><?php echo $title; ?></a></div>
				</div>
				<div class="rightBox" id="news-neiye">
					<div class="content fixed">
						<?php echo $data['content']; ?>
					</div>
					<!--content end-->
				</div>
			</div>
			<!--right end-->
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			var left=$(".leftnav");
			var right=$(".right-con");
			var ul=$(".type-ul")
			setInterval(function(){
				right.height(left.height());
			},100);      

		})
	</script>

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
