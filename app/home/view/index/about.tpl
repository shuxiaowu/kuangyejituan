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
					<h3>关于联盟 </h3>
					<p>about us </p>
				</a> </div>
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion" 
									href="#collapseOne" style="display:block;">
									联盟介绍<img src="__img__/arrow-right.png">
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse">
							<volist name="datatype" id="obj">
								<div class="panel-body <eq name="Id" value="$obj['Id']">active</eq>">
									<a href="{:url('Index/about','Id='.$obj['Id'])}">{$obj.topic}</a>
								</div>
							</volist>
						</div>
					</div>
				</div>
				
				<div class="panel-group" id="accordion01">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion01" 
								href="#collapseTwo" style="display:block;">
								联盟新闻<img src="__img__/arrow-right.png">
							</a>
						</h4>
					</div>
				</div>
				<div id="collapseTwo" class="panel-collapse collapse">
					<volist name="aboutnews" id="obj">
						<div class="panel-body <eq name="Id" value="$obj['Id']">active</eq>">
							<a href="{:url('Index/about','Id='.$obj['Id'])}">{$obj.topic}</a>
						</div>
					</volist>
				</div>
			</div>
			<volist name="aboutother" id="obj">
			<div class="panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading <eq name="Id" value="$obj['Id']">active</eq>">
						<h4 class="panel-title">
							<a href="{:url('Index/about','Id='.$obj['Id'])}">
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
				<div class="pathdiv"> <a href="{:url('Index/index')}">主页</a><span>&gt;</span><a href="">关于联盟</a><span>&gt;</span><a href="" class="on">{$title}</a></div>
			</div>
			<div class="rightBox">
				<div class="content fixed">
					{$data.content}
				</div>
				<!--content end-->
			</div>
		</div>
		<!--right end-->
	</div>
</div>
<script type="text/javascript">
	$(function(){
		if($('#collapseOne').hasClass('in')){
			$('#accordion .panel-title a').addClass('toggle');
			$('#accordion .panel-title a').children('img').attr("src","__img__/arrow-down.png");
		}
		else{
			$('#accordion .panel-title a').removeClass('toggle');
			$('#accordion .panel-title a').children('img').attr("src","__img__/arrow-right.png");
		}
					// 
					if($('#collapseTwo').hasClass('in')){
						$('#accordion01 .panel-title a').addClass('toggle');
						$('#accordion01 .panel-title a').children('img').attr("src","__img__/arrow-down.png");
					}
					else{
						$('#accordion01 .panel-title a').removeClass('toggle');
						$('#accordion01 .panel-title a').children('img').attr("src","__img__/arrow-right.png");
					}
				})
				// 1
				$('#collapseOne .active').parent().addClass('in');
				// 2
				$('#collapseTwo .active').parent().addClass('in');

				$('#accordion .panel-title a').click(function(){
					if($(this).hasClass('toggle')){
						$(this).removeClass('toggle');
						$(this).children('img').attr("src","__img__/arrow-right.png");
					}else{
						$(this).addClass('toggle');
						$(this).children('img').attr("src","__img__/arrow-down.png");
					}
				})
				$('#accordion01 .panel-title a').click(function(){
					if($(this).hasClass('toggle')){
						$(this).removeClass('toggle');
						$(this).children('img').attr("src","__img__/arrow-right.png");
					}else{
						$(this).addClass('toggle');
						$(this).children('img').attr("src","__img__/arrow-down.png");
					}
				})
				console.log($('.leftnav').height());
			</script>
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