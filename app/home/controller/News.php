<?php
namespace app\home\controller;
use think\Db;

class News extends Home{
	
	public function newsinfo(){
		$type      = input('type',0,'intval');
		$sty       = 1;
		$pagesize  = 15;
		$mark      = 'newsinfo';
		$picid     = 3;
		$title     = '矿业新闻';
		$this->getNews($type,$sty,$pagesize,$mark,$picid,$title);
		return $this->fetch();
	}
	// 矿业服务
	public function service(){
		$type      = input('type',0,'intval');
		$sty       = 2;
		$pagesize  = 15;
		$mark      = 'service';
		$picid     = 3;
		$title     = '矿业服务';
		$this->getNews($type,$sty,$pagesize,$mark,$picid,$title);
		return $this->fetch();
	}
	public function getNews($type,$sty,$pagesize,$mark,$picid,$title,$tables="information"){
		if ($type) $type = (model('Home')->cktype('inftype',$type)) ? $type : 0;
		$kwd       = input('param.kwd');
		$kwd       = iconv('GB2312', 'UTF-8', $kwd);
		$kwd       = model('Home')->dosqlxss($kwd);
		$where     = 'sty='.$sty.' AND enabled=1';
		if ($type) $where .= ' AND inftype='.$type;
		if ($kwd)  $where .= " AND ( topic LIKE '%".$kwd."%' OR intro LIKE '%".$kwd."%')";
		$newsType  = Db::name('inftype')->field('topic,Id')->where(['enabled'=>1,'sty'=>$sty])->order('ord ASC')->select();
		$count     = Db::name($tables)->where($where)->count();
		$page      = new \page\HomePage($count,$pagesize);
		$news      = Db::name($tables)->field('inftype,Id,pic,topic,intro,date,linkurl')->where($where)->order('istop DESC,date DESC')->limit($page->limit)->select();
	 //tdk设置
		$title     = ($type) ? model('Home')->gdata('inftype',(int)$type) : $title;
	 //end
		$pageshow = ($count>$pagesize) ? $page->showpage() : '';
		$this->assign('kwd',$kwd);
		$this->assign('pageshow',$pageshow);
		$this->assign('newsType',$newsType);
		$this->assign('news',$news);
		$this->assign('type',$type);
		$this->assign('title',$title);
		$this->assign('banner',insidepic($picid));
		$this->assign('mark',$mark);
	}
	
}
