<extend name="common/common" />
<block name="main">
	<!-- 大图 -->
	<div id="homepage">
		<div class="bd">
			<img src="{:upic($banner['pic'])}">
		</div>
	</div>
<div class="mainbox">
	<div class="main fixed">
		<div class="left leftnav wow fadeInLeft animated">
			<div class="sideMenu">
				<div class="sideTit"> <a>
					<h3>矿业新闻</h3>
					<p>News</p>
				</a> </div>
				<volist name="newsType" id="obj">
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading <eq name="type" value="$obj['Id']">active</eq>">
								<h4 class="panel-title">
									<a href="{:url('News/newsinfo','type='.$obj['Id'])}">
										{$obj.topic}
									</a>
								</h4>
							</div>
						</div>
					</div>
				</volist>
			</div>
			<include file="common/inside">
			</div>
			<!--left end-->
			<div class="right-con wow fadeInUp animated">
				<div class="path">
					<h3>{$title}</h3>
					<div class="pathdiv"> <a href="{:url('Index/index')}">主页</a><span>&gt;</span><a href="{:url('News/newsinfo')}">矿业新闻</a><span>&gt;</span><a href="" class="on">{$title}</a></div>
				</div>
				<div class="rightBox" id="news-neiye">
					<div class="content fixed">
						<volist name="news" id="obj">
							<div class="list-down">

								<a href="#" alt="{$obj.topic}" title="{$obj.topic}">
									<div class="list-down-item">
										<div class="pull-left leftimg">
											<img src="{:dpic($obj['pic'])}" width="100%" height="100%">
											<div class="opacity">
												<img src="__img__/hovernew.png">
											</div>
										</div>
										<div class="pull-right meetcon">
											<div class="meettopic"><a href="" alt="{$obj.topic}" title="{$obj.topic}">{$obj.topic}</a></div>
											<div class="meetintro">{$obj.intro}</div>
											<div class="meettime">{$obj.date|subtext=0,11}</div>
										</div>
									</div>
								</a>
							</div>
						</volist>
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
</block>