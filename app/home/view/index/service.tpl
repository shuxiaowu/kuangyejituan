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
					<h3>矿业服务</h3>
					<p>Service</p>
				</a> </div>
				<volist name="datatype" id="obj">
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading <eq name="Id" value="$obj['Id']">active</eq>">
								<h4 class="panel-title">
									<a href="{:url('Index/service','Id='.$obj['Id'])}">
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
					<div class="pathdiv"> <a href="{:url('Index/index')}">主页</a><span>&gt;</span><a href="{:url('Index/service')}">矿业服务</a><span>&gt;</span><a href="" class="on">{$title}</a></div>
				</div>
				<div class="rightBox" id="news-neiye">
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
			var left=$(".leftnav");
			var right=$(".right-con");
			var ul=$(".type-ul")
			setInterval(function(){
				right.height(left.height());
			},100);      

		})
	</script>
</block>