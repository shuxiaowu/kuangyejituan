<?php
namespace app\home\controller;
use think\Db;
use think\Request;
class Index extends Home{
	public function index(){
		$banner = Db::name('advdata')->field('*')->where(['enabled'=>1,'ctag'=>1])->limit(3)->select();
		$this->assign('banner',$banner);
		return $this->fetch();
	}
	// 关于我们
	public function about(){
		$sty = 1;
		$tables = 'aboutus';
		$title = "关于联盟";
		$pic = 2;
		$mark = "about";
		$firstId   =DB::name($tables)->field('Id')->where(array('enabled'=>1,'sty'=>$sty))->limit(1)->order('ord ASC')->find();
		$Id  =Request::instance()->param('Id',$firstId['Id'],'intval');
		// if (!$Id) $this->error('页面不存在ID');
		$datatype = Db::name($tables)->field('Id,topic')->where(['enabled'=>1,'sty'=>$sty])->order('ord ASC,Id DESC')->select();
		$data = Db::name($tables)->field('topic,Id,content,title,metades,keyword')->where(['enabled'=>1,'Id'=>$Id])->find();
		// 联盟新闻
		$aboutnews = Db::name($tables)->field('Id,topic')->where(['enabled'=>1,'sty'=>2])->order('ord ASC,Id DESC')->select();
		// 其他
		$aboutother = Db::name($tables)->field('Id,topic')->where(['enabled'=>1,'sty'=>3])->order('ord ASC,Id DESC')->select();
		$this->assign('aboutother',$aboutother);
		$this->assign('aboutnews',$aboutnews);
		$this->assign('banner',insidepic($pic));
		$this->assign('title', ($data['topic']!='')   ? $data['topic']   : $title);
		$this->assign('metades',($data['metades']!='') ? $data['metades'] : $data['topic']);
		$this->assign('metakey',($data['keyword']!='') ? $data['keyword'] : $data['topic']);
		$this->assign('data',$data);
		$this->assign('Id',$Id);
		$this->assign('datatype',$datatype);
		$this->assign('mark','about');
		return $this->fetch();
	}
	// 矿业服务
	public function service(){
		$sty = 4;
		$tables = 'aboutus';
		$title = "矿业服务";
		$pic = 4;
		$mark = "service";
		$firstId   =DB::name($tables)->field('Id')->where(array('enabled'=>1,'sty'=>$sty))->limit(1)->order('ord ASC')->find();
		$Id  =Request::instance()->param('Id',$firstId['Id'],'intval');
		// if (!$Id) $this->error('页面不存在ID');
		$datatype = Db::name($tables)->field('Id,topic')->where(['enabled'=>1,'sty'=>$sty])->order('ord ASC,Id DESC')->select();
		$data = Db::name($tables)->field('topic,Id,content,title,metades,keyword')->where(['enabled'=>1,'sty'=>$sty,'Id'=>$Id])->find();
		$this->assign('banner',insidepic($pic));
		$this->assign('title', ($data['topic']!='')   ? $data['topic']   : $title);
		$this->assign('metades',($data['metades']!='') ? $data['metades'] : $data['topic']);
		$this->assign('metakey',($data['keyword']!='') ? $data['keyword'] : $data['topic']);
		$this->assign('data',$data);
		$this->assign('Id',$Id);
		$this->assign('datatype',$datatype);
		$this->assign('mark','about');
		return $this->fetch();
	}
		// 矿业服务
	public function contact(){
		$sty = 5;
		$tables = 'aboutus';
		$title = "矿业服务";
		$pic = 5;
		$mark = "contact";
		$firstId   =DB::name($tables)->field('Id')->where(array('enabled'=>1,'sty'=>$sty))->limit(1)->order('ord ASC')->find();
		$Id  =Request::instance()->param('Id',$firstId['Id'],'intval');
		// if (!$Id) $this->error('页面不存在ID');
		$datatype = Db::name($tables)->field('Id,topic')->where(['enabled'=>1,'sty'=>$sty])->order('ord ASC,Id DESC')->select();
		$data = Db::name($tables)->field('topic,Id,content,title,metades,keyword')->where(['enabled'=>1,'sty'=>$sty,'Id'=>$Id])->find();
		$this->assign('banner',insidepic($pic));
		$this->assign('title', ($data['topic']!='')   ? $data['topic']   : $title);
		$this->assign('metades',($data['metades']!='') ? $data['metades'] : $data['topic']);
		$this->assign('metakey',($data['keyword']!='') ? $data['keyword'] : $data['topic']);
		$this->assign('data',$data);
		$this->assign('Id',$Id);
		$this->assign('datatype',$datatype);
		$this->assign('mark','contact');
		return $this->fetch();
	}
	// 矿权交易
	public  function oretrading(){
		$pic = 5;
		$this->assign('banner',insidepic($pic));
		return $this->fetch();
	}
	public function online(){
		if ( request()->isAjax() ) {
			return json(model('Home')->recordonline());
		} else {
			return json(['state'=>0,'msg'=>'非法请求']);
		}
	}

	
}
