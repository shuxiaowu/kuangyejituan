<extend name="common/common" />
<block name="title">
	<link rel="stylesheet" href="__css__/fileinput.min.css">
	<script src="__js__/fileinput.min.js"></script>
	<script src="__js__/zh.js"></script>
</block>
<block name="main">
	<!-- 大图 -->
	<div id="homepage">
		<div class="bd">
			<img src="{:upic($banner['pic'])}">
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
	<script src="__js__/distpicker.data.js"></script>
	<script src="__js__/distpicker.js"></script>
	<script src="__js__/main.js"></script>
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
</block>