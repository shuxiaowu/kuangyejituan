<?php
return [
   'view_replace_str' => [
		'__css__'    => root().'/public/bhadmin/css',
		'__js__'     => root().'/public/bhadmin/js',
		'__img__'    => root().'/public/bhadmin/images',
		'__editor__' => root().'/public/kindedit',
        '__pic__'    => root().'/uploads/images/',
		'__upload__' => root().'/public/bhadmin/uploadify',
		'__upfile__' => root().'/uploads/',
   ],
   'dispatch_success_tmpl' => dirname(THINK_PATH) . '/app/bhadmin/view/public/jump.tpl',
   'dispatch_error_tmpl'   => dirname(THINK_PATH) . '/app/bhadmin/view/public/jump.tpl',
   'url_html_suffix' => '.html',      //后缀
   'url_route_on'    => false,        //是否开启路由
   'adminpage'       => 15,           //默认分页数
   'tipstime'        => 2,            //提示倒计时秒数
   'login_error_max' => 5,            //输错了多少次封停 1 小时
   'delmore'         => 8,            //批量删除该值时的后悔机制
   'devcompany'      => '百恒网络',     //开发公司
   'db_backup'       => 'backup',     //数据库备份
   'admin_version'   => '4.5.2',      //版本
   'admin_menu'      => false,        //menu显示方案
   'admin_update'    => '2018-03-01'  //开发时间
];