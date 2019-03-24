<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<title><empty name="title">{$metatitle}<else/>{$title} - {$metatitle}</empty></title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="renderer" content="webkit" />
<meta name="description" content="{$metades}" />
<meta name="keywords" content="{$metakey}" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="__css__/common.css?v=2" />
<link rel="stylesheet" href="__css__/bootstrap.css" />
<link rel="shortcut icon" href="__img__/favicon.ico" />
<script src="__js__/jquery.min.js"></script>
<script src="__js__/bootstrap.js"></script>
<!-- <script src="__js__/common.js"></script> -->
<block name="title"></block>
<script type="text/javascript">
 var think   = '{$think}/home';
 var img     = '__img__';
 var pic     = '__pic__';
</script>
</head>
<body>
<include file="common/header" />
<block name="main"></block>
<include file="common/footer" />
<notempty name="sysconf">{$sysconf['sys_code']}</notempty>
</body>
</html>
