<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:65:"D:\phpStudy\PHPTutorial\WWW\kuangye/app/home\view\index\index.tpl";i:1553313230;s:67:"D:\phpStudy\PHPTutorial\WWW\kuangye\app\home\view\common\common.tpl";i:1553325227;s:67:"D:\phpStudy\PHPTutorial\WWW\kuangye\app\home\view\common\header.tpl";i:1553328860;s:67:"D:\phpStudy\PHPTutorial\WWW\kuangye\app\home\view\common\footer.tpl";i:1553243640;}*/ ?>
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

	<link rel="stylesheet" type="text/css" href="/kuangye/public/home/css/htmleaf-demo.css" media="all">
	<link href="/kuangye/public/home/css/bootstrap.min.css" rel="stylesheet">
	<link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" media="all">
	<link href="/kuangye/public/home/css/animate.min.css" rel="stylesheet" media="all">
	<link href="/kuangye/public/home/css/bootstrap-touch-slider.css" rel="stylesheet" media="all">
	<link rel="stylesheet" href="/kuangye/public/home/css/swiper.min.css">

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

	<div class="htmleaf-container">
		<div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" >
			<ol class="carousel-indicators">
				<?php if(is_array($banner) || $banner instanceof \think\Collection || $banner instanceof \think\Paginator): $k = 0; $__LIST__ = $banner;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($k % 2 );++$k;?>
					<li data-target="#bootstrap-touch-slider"  data-slide-to="<?php echo $k-1; ?>"></li>
				<?php endforeach; endif; else: echo "" ;endif; ?>
			</ol>
			<div class="carousel-inner" role="listbox">
				<?php if(is_array($banner) || $banner instanceof \think\Collection || $banner instanceof \think\Paginator): $i = 0; $__LIST__ = $banner;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?>
					<div class="item">
						<img src="<?php echo banner($obj['pic']); ?>" alt="<?php echo $obj['topic']; ?>"  class="slide-image"/>
						<div class="bs-slider-overlay"></div>
						<div class="container">
							<div class="row">
								<div class="slide-text">
									<h2 data-animation="animated zoomInRight" style="font-size:48px;color:#fff">国际最有价值的矿业资源平台</h2>
									<p data-animation="animated fadeInLeft">Joint Construction of International Mining Union and Integration of Mining Resources</p>
									<a href="#" target="_blank"  data-animation="animated fadeInLeft" style=" -webkit-animation-delay: 2s;
									animation-delay: 2s; color:#fff;font-size:18px;margin-top:25px; padding:15px 60px;border:1px solid #fff">维护矿业合法权益，促进全球矿业发展</a>
								</div>
							</div>
						</div>
					</div>
				<?php endforeach; endif; else: echo "" ;endif; ?>
				<a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev">
					<span class="fa fa-angle-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next">
					<span class="fa fa-angle-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div> 
		</div>
		<script>
			$(function(){
				$("#bootstrap-touch-slider").carousel('cycle');
				$('#bootstrap-touch-slider .carousel-inner .item').eq(0).addClass('active');
				$('#bootstrap-touch-slider .carousel-indicators li').eq(0).addClass('active');
			});

		</script>
		<script src="/kuangye/public/home/js/jquery.touchSwipe.min.js"></script>
		<script src="/kuangye/public/home/js/bootstrap-touch-slider.js"></script>
		<script type="text/javascript">
			$('#bootstrap-touch-slider').bsTouchSlider();
		</script>
		<!--  -->
		<div class="container" id="newsmodule">
			<div class="row">
				<div class="col-xs-4 newstopbox demo01">
					<div class="box">
						<div class="list-top">
							<div class="pull-left">
								<div class="pull-left bigword" >A</div>
								<div class="pull-left littleword">
									<a>bout us</a>
									<a>关于联盟</a>
								</div>
							</div>
							<div class="pull-right mores">
								更多+
							</div>
						</div>
						<div class="list-down">
							当今，世界上各行各业的非政府组织对各国的政策、经济形势以及社会的稳定、行业的利益产生着巨大的影响，一个有国际重大影响力的非政府组织已是一股不可小视的社会力量。然而，目前许多国家，特别是不发达国家对跨国的非政府组织还不够重视、研究不深。在国家、地区间的竞争和全球化进程同时存在的情况下，如何组织创立世界上各行各业的非政府组织对各国的政策业不深
						</div>
						<div class="introlist">
							<div class="pull-left newschild">
								<a href="">
									<img src="/kuangye/public/home/images/img01.png">
									<p>联盟章程</p>
								</a>
							</div>
							<div class="pull-left newschild">
								<a href="">
									<img src="/kuangye/public/home/images/img02.png">
									<p>联盟特色</p>
								</a>
							</div>
							<div class="pull-left newschild">
								<a href="">
									<img src="/kuangye/public/home/images/img03.png">
									<p>联盟服务</p>
								</a>
							</div>
							<div class="pull-left newschild">
								<a href="">
									<img src="/kuangye/public/home/images/img04.png">
									<p>发展计划</p>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-4 newstopbox demo02">
					<div class="box">
						<div class="list-top">
							<div class="pull-left">
								<div class="pull-left bigword" >N</div>
								<div class="pull-left littleword">
									<a>ews</a>
									<a>联盟新闻</a>
								</div>
							</div>
							<div class="pull-right mores">
								更多+
							</div>
						</div>
						<div class="newsinfo-lsit">
							<div class="newsinfo-img pull-left">
								<img src="/kuangye/public/home/images/news1.png" width="100%" height="100%">
							</div>
							<div class="newsinfo-text pull-left">
								<div class="newstitle">标题标题标题标题标题标题标题标题标题标题</div>
								<div class="newsinfo-intro">内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容容内容内容内容内容内容内容容内容内容内容内容内容内容容内容内容内容内容内容内容</div>
							</div>
							<div class="newsinfo-more">
								<a href="">More+</a>
							</div>
						</div>
						<div class="newsinfo-lsit">
							<div class="newsinfo-img pull-left">
								<img src="/kuangye/public/home/images/news1.png" width="100%" height="100%">
							</div>
							<div class="newsinfo-text pull-left">
								<div class="newstitle">标题标题标题标题标题标题标题标题标题标题</div>
								<div class="newsinfo-intro">内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容容内容内容内容内容内容内容容内容内容内容内容内容内容容内容内容内容内容内容内容</div>
							</div>
							<div class="newsinfo-more">
								<a href="">More+</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-4 newstopbox demo03">
					<div class="sq-vip">
						<a href="">
							<img src="/kuangye/public/home/images/shenqing.jpg" width="100%">
						</a>
					</div>
					<div class="ls-danwei">
						<a href="">
							<img src="/kuangye/public/home/images/lishi.jpg" width="100%">
						</a>
					</div>
					<div class="sq-list">
						<div class="sq-li">
							<a href="">中国环境保护产业协会，贵州黄帝净化器</a>
						</div>
						<div class="sq-li">
							<a href="">中国环境保护产业协会，贵州黄帝净化器</a>
						</div>
						<div class="sq-li">
							<a href="">中国环境保护产业协会，贵州黄帝净化器</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--  -->
		<div id="service">
			<img src="/kuangye/public/home/images/kuangservice.jpg" width="100%">
		</div>
		<!-- 矿产交易 -->
		<div id="transaction">
			<div class="container">
				<div class="head-topic">
					矿权交易
				</div>
				<div class="transaction-ul">
					<div class="tran-item pull-left">

						<div class="pull-left tran-img">
							<img src="/kuangye/public/home/images/tran1.jpg">
						</div>
						<div class="pull-left trantext">
							<div class="trantext-title"><a href="">广西大新县弄屯铅锌矿勘探	</a></div>
							<div class="trantext-intro">项目概况：项目探矿权发证单位是广西壮族自治区国土资源
								厅，弹框号为T4512008110,有效期限2030年......<a>[详情]</a></div>

								<div class="trantext-time">
									发布日期:2018-12-05
								</div>
							</div>

						</div>
						<div class="tran-item pull-left">

							<div class="pull-left tran-img">
								<img src="/kuangye/public/home/images/tran1.jpg">
							</div>
							<div class="pull-left trantext">
								<div class="trantext-title"><a href="">广西大新县弄屯铅锌矿勘探	</a></div>
								<div class="trantext-intro">项目概况：项目探矿权发证单位是广西壮族自治区国土资源
									厅，弹框号为T4512008110,有效期限2030年......<a>[详情]</a></div>

									<div class="trantext-time">
										发布日期:2018-12-05
									</div>
								</div>

							</div>
							<div class="tran-item pull-left">

								<div class="pull-left tran-img">
									<img src="/kuangye/public/home/images/tran1.jpg">
								</div>
								<div class="pull-left trantext">
									<div class="trantext-title"><a href="">广西大新县弄屯铅锌矿勘探	</a></div>
									<div class="trantext-intro">项目概况：项目探矿权发证单位是广西壮族自治区国土资源
										厅，弹框号为T4512008110,有效期限2030年......<a>[详情]</a></div>

										<div class="trantext-time">
											发布日期:2018-12-05
										</div>
									</div>

								</div>
								<div class="tran-item pull-left">

									<div class="pull-left tran-img">
										<img src="/kuangye/public/home/images/tran1.jpg">
									</div>
									<div class="pull-left trantext">
										<div class="trantext-title"><a href="">广西大新县弄屯铅锌矿勘探	</a></div>
										<div class="trantext-intro">项目概况：项目探矿权发证单位是广西壮族自治区国土资源
											厅，弹框号为T4512008110,有效期限2030年......<a>[详情]</a></div>

											<div class="trantext-time">
												发布日期:2018-12-05
											</div>
										</div>

									</div>

								</div>
								<div class="btntran">
									<a href="">查看更多</a>
								</div>
							</div>
						</div>
						<!--  -->
						<style type="text/css">

					</style>
					<div id="supply">
						<div class="container">
							<div class="head-topic">
								供求信息
							</div>
							<div class="supply-ul">
								<div class="supply-item pull-left">
									<div class="supply-itemimg">
										<img src="/kuangye/public/home/images/gongqiu1.jpg" width="100%">
									</div>
									<div class="supply-itemlist">
										<div class="iconimg"><img src="/kuangye/public/home/images/yuan.png" width="100%"></div><div class="supply-itemtitle">矿石供应信息</div>
										<ul>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题</a></li>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题</a></li>
										</ul>
									</div>
								</div>
								<div class="supply-item pull-left">
									<div class="supply-itemimg">
										<img src="/kuangye/public/home/images/gongqiu1.jpg" width="100%">
									</div>
									<div class="supply-itemlist">
										<div class="iconimg"><img src="/kuangye/public/home/images/yuan.png" width="100%"></div><div class="supply-itemtitle">矿石供应信息</div>
										<ul>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题</a></li>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题</a></li>
										</ul>
									</div>
								</div>
								<div class="supply-item pull-left">
									<div class="supply-itemimg">
										<img src="/kuangye/public/home/images/gongqiu1.jpg" width="100%">
									</div>
									<div class="supply-itemlist">
										<div class="iconimg"><img src="/kuangye/public/home/images/yuan.png" width="100%"></div><div class="supply-itemtitle">矿石供应信息</div>
										<ul>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题</a></li>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题</a></li>
										</ul>
									</div>
								</div>
								<div class="supply-item pull-left">
									<div class="supply-itemimg">
										<img src="/kuangye/public/home/images/gongqiu1.jpg" width="100%">
									</div>
									<div class="supply-itemlist">
										<div class="iconimg"><img src="/kuangye/public/home/images/yuan.png" width="100%"></div><div class="supply-itemtitle">矿石供应信息</div>
										<ul>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题</a></li>
											<li><img src="/kuangye/public/home/images/arrow.png"><a href="">矿石供应信息标题标题</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--  -->
					<div class="container" id="kuangmeet">
						<div class="row">
							<div class="col-xs-4 newstopbox demo01">
								<div class="box">
									<div class="list-top">
										<div class="pull-left">
											<div class="pull-left bigword" >N</div>
											<div class="pull-left littleword">
												<a>ews</a>
												<a>矿业新闻</a>
											</div>
										</div>
										<div class="pull-right mores">
											更多+
										</div>
									</div>
									<div class="list-down">
										<div class="list-down-item">
											<div class="pull-left leftimg">
												<img src="/kuangye/public/home/images/meeting.jpg" width="100%" height="100%">
												<div class="opacity">
												<img src="/kuangye/public/home/images/hovernew.png">
											</div>
											</div>
											<div class="pull-left meetcon">
												<div class="meettopic"><a href="" alt="" title="">如何重塑煤矿技术工人</a></div>
												<div class="meetintro">“ 最新的设备引进后， 大多数操作员只会摁按钮
													一有故障就只能叫厂家。” 全国人大代表、山
												西阳泉煤业集团一矿开掘工区机电队质人才。”</div>
												<div class="meettime">2019-08-05</div>
											</div>
										</div>

										<div class="list-down-item">
											<div class="pull-left leftimg">
												<img src="/kuangye/public/home/images/meeting.jpg" width="100%" height="100%">
												<div class="opacity">
												<img src="/kuangye/public/home/images/hovernew.png">
											</div>
											</div>
											<div class="pull-left meetcon">
												<div class="meettopic"><a href="" alt="" title="">如何重塑煤矿技术工人</a></div>
												<div class="meetintro">“ 最新的设备引进后， 大多数操作员只会摁按钮
													一有故障就只能叫厂家。” 全国人大代表、山
												西阳泉煤业集团一矿开掘工区机电队质人才。”</div>
												<div class="meettime">2019-08-05</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						<div class="col-xs-4 newstopbox demo02">
							<div class="box">
								<div class="list-top">
									<div class="pull-left">
										<div class="pull-left bigword" >E</div>
										<div class="pull-left littleword">
											<a>xhibition</a>
											<a>会议会展</a>
										</div>
									</div>
									<div class="pull-right mores">
										更多+
									</div>
								</div>
								<!-- Swiper -->
								<div class="swiper-container gallery-top">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<a href="#"><img src="/kuangye/public/home/images/galler.jpg" width="100%"></a>
										</div>
										<div class="swiper-slide">
											<a href="#"><img src="/kuangye/public/home/images/galler.jpg" width="100%"></a>
										</div>
										<div class="swiper-slide">
											<a href="#"><img src="/kuangye/public/home/images/galler.jpg" width="100%"></a>
										</div>
									</div>
									<!-- Add Arrows -->

								</div>
								<div class="swiper-button-next swiper-button-white"></div>
								<div class="swiper-button-prev swiper-button-white"></div>
								<div class="swiper-container gallery-thumbs">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<img src="/kuangye/public/home/images/galler.jpg" width="100%">
										</div>
										<div class="swiper-slide">
											<img src="/kuangye/public/home/images/galler.jpg" width="100%">
										</div>
										<div class="swiper-slide">
											<img src="/kuangye/public/home/images/galler.jpg" width="100%">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<script type="text/javascript">
					$(function(){
						$('.gallery-top .swiper-slide').click(function(){
							alert('sds');
						})
					})
				</script>
				<script src="/kuangye/public/home/js/swiper.js"></script>
				<script>
					var galleryTop = new Swiper('.gallery-top', {
						loop:true,
						// loopedSlides:7,
						// autoplay: true, 
						preventClicks :false,
						// autoplay: {
						// 	delay: 3000,
						// 	stopOnLastSlide: false,
						// 	disableOnInteraction: true,

						// },
						navigation: {
							nextEl: '.swiper-button-next',
							prevEl: '.swiper-button-prev',
						},
					});
					var galleryThumbs = new Swiper('.gallery-thumbs', {
						spaceBetween: 10,
						centeredSlides: true,
						slidesPerView: 5,
						touchRatio: 0.2,
						loopedSlides: 5, 
						slideToClickedSlide: true,
					});
					galleryTop.controller.control = galleryThumbs;
					galleryThumbs.controller.control = galleryTop;


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
