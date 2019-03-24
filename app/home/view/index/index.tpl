<extend name="common/common" />
<block name="title">
	<link rel="stylesheet" type="text/css" href="__css__/htmleaf-demo.css" media="all">
	<link href="__css__/bootstrap.min.css" rel="stylesheet">
	<link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" media="all">
	<link href="__css__/animate.min.css" rel="stylesheet" media="all">
	<link href="__css__/bootstrap-touch-slider.css" rel="stylesheet" media="all">
	<link rel="stylesheet" href="__css__/swiper.min.css">
</block>
<block name="main">
	<div class="htmleaf-container">
		<div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" >
			<ol class="carousel-indicators">
				<volist name="banner" id="obj" key="k">
					<li data-target="#bootstrap-touch-slider"  data-slide-to="{$k-1}"></li>
				</volist>
			</ol>
			<div class="carousel-inner" role="listbox">
				<volist name="banner" id="obj">
					<div class="item">
						<img src="{:banner($obj['pic'])}" alt="{$obj.topic}"  class="slide-image"/>
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
				</volist>
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
		<script src="__js__/jquery.touchSwipe.min.js"></script>
		<script src="__js__/bootstrap-touch-slider.js"></script>
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
									<img src="__img__/img01.png">
									<p>联盟章程</p>
								</a>
							</div>
							<div class="pull-left newschild">
								<a href="">
									<img src="__img__/img02.png">
									<p>联盟特色</p>
								</a>
							</div>
							<div class="pull-left newschild">
								<a href="">
									<img src="__img__/img03.png">
									<p>联盟服务</p>
								</a>
							</div>
							<div class="pull-left newschild">
								<a href="">
									<img src="__img__/img04.png">
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
								<img src="__img__/news1.png" width="100%" height="100%">
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
								<img src="__img__/news1.png" width="100%" height="100%">
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
							<img src="__img__/shenqing.jpg" width="100%">
						</a>
					</div>
					<div class="ls-danwei">
						<a href="">
							<img src="__img__/lishi.jpg" width="100%">
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
			<img src="__img__/kuangservice.jpg" width="100%">
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
							<img src="__img__/tran1.jpg">
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
								<img src="__img__/tran1.jpg">
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
									<img src="__img__/tran1.jpg">
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
										<img src="__img__/tran1.jpg">
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
										<img src="__img__/gongqiu1.jpg" width="100%">
									</div>
									<div class="supply-itemlist">
										<div class="iconimg"><img src="__img__/yuan.png" width="100%"></div><div class="supply-itemtitle">矿石供应信息</div>
										<ul>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题</a></li>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题</a></li>
										</ul>
									</div>
								</div>
								<div class="supply-item pull-left">
									<div class="supply-itemimg">
										<img src="__img__/gongqiu1.jpg" width="100%">
									</div>
									<div class="supply-itemlist">
										<div class="iconimg"><img src="__img__/yuan.png" width="100%"></div><div class="supply-itemtitle">矿石供应信息</div>
										<ul>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题</a></li>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题</a></li>
										</ul>
									</div>
								</div>
								<div class="supply-item pull-left">
									<div class="supply-itemimg">
										<img src="__img__/gongqiu1.jpg" width="100%">
									</div>
									<div class="supply-itemlist">
										<div class="iconimg"><img src="__img__/yuan.png" width="100%"></div><div class="supply-itemtitle">矿石供应信息</div>
										<ul>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题</a></li>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题</a></li>
										</ul>
									</div>
								</div>
								<div class="supply-item pull-left">
									<div class="supply-itemimg">
										<img src="__img__/gongqiu1.jpg" width="100%">
									</div>
									<div class="supply-itemlist">
										<div class="iconimg"><img src="__img__/yuan.png" width="100%"></div><div class="supply-itemtitle">矿石供应信息</div>
										<ul>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题矿石供应信息标题标题</a></li>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题</a></li>
											<li><img src="__img__/arrow.png"><a href="">矿石供应信息标题标题</a></li>
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
												<img src="__img__/meeting.jpg" width="100%" height="100%">
												<div class="opacity">
												<img src="__img__/hovernew.png">
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
												<img src="__img__/meeting.jpg" width="100%" height="100%">
												<div class="opacity">
												<img src="__img__/hovernew.png">
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
											<a href="#"><img src="__img__/galler.jpg" width="100%"></a>
										</div>
										<div class="swiper-slide">
											<a href="#"><img src="__img__/galler.jpg" width="100%"></a>
										</div>
										<div class="swiper-slide">
											<a href="#"><img src="__img__/galler.jpg" width="100%"></a>
										</div>
									</div>
									<!-- Add Arrows -->

								</div>
								<div class="swiper-button-next swiper-button-white"></div>
								<div class="swiper-button-prev swiper-button-white"></div>
								<div class="swiper-container gallery-thumbs">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<img src="__img__/galler.jpg" width="100%">
										</div>
										<div class="swiper-slide">
											<img src="__img__/galler.jpg" width="100%">
										</div>
										<div class="swiper-slide">
											<img src="__img__/galler.jpg" width="100%">
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
				<script src="__js__/swiper.js"></script>
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
			</block>
