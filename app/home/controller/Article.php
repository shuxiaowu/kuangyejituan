<?php
namespace app\home\controller;
use think\Db;

class Article extends Home{
	
    public function index(){
      $id     = input('id',0,'intval');
	  $tables = 'information';
	  if (!$id) $this->error('页面不存在');
	  $data   = Db::name($tables)->field('topic,title,author,date,content,keyword,metades,sty,hit,source,intro,pic,linkurl')->where(['enabled'=>1,'Id'=>$id])->find();
	  if (!$data) $this->error('页面不存在');
	  Db::name($tables)->where(array('enabled'=>1,'Id'=>$id))->limit(1)->setInc('hit');
	  if ($data['linkurl'] !='' ) header("Location:".$data['linkurl']);
	  $data['date']    = date('Y-m-d',strtotime($data['date']));
	  $data['author']  = ($data['author']=='admin') ? '' : $data['author'];
	  $this->assign('data',$data);
	  $this->assign('title',  ($data['title']!='')   ? $data['title']   : $data['topic']);
	  $this->assign('metades',($data['metades']!='') ? $data['metades'] : $data['topic']);
	  $this->assign('metakey',($data['keyword']!='') ? $data['keyword'] : $data['topic']);
	  $this->assign('mark','article');
	  return $this->fetch();
	}
	
}
