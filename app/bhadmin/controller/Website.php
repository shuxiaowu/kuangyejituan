<?php
namespace app\bhadmin\controller;
use think\Db;

class Website extends Common{
	
    public function aboutlist(){
      $sty = input('sty', 1, 'intval');
      $this->pageDisplay(array('where' => array('sty' => $sty), 'sty' => $sty));
	  return view();
    }
	
    public function aboutadd(){
	  $send   = input('post.send', '');
	  $tables = input('tables', '');
	  $sty    = input('sty', 1,'intval');
	  if ($tables == '') $this->error('数据表为空，无法获取数据', url('index/index'), 2);
	  if ($send == '') {
		return $this->fetch('',['tables'=>$tables,'sty'=>$sty,'upload'=>true,'editor'=>true,'title'=>'添加资料']);
	  } else {
		if ($send == '提交') {
		  $result = Db::name($tables)->insert($this->fieldArr('domain,intro,pic,sty,content,title,keyword,metades'));
		  if ($result) {
			$this->success('资料添加成功', url('website/aboutlist', 'tables=' . $tables . '&sty=' . $sty));
		  } else {
		    $this->error('资料添加失败，请重新试试吧', url('website/aboutadd', 'tables=' . $tables . '&sty=' . $sty));
		  }
		}
	  }
    }

    public function aboutmod(){
	  $save   = input('post.send', '');
	  $tables = input('tables', '');
	  $id     = input('id', 0, 'intval');
	  if ( $tables == '' ) $this->error('数据表为空，无法获取数据', url('index/index'), 2);
	  if ( !$id )          $this->error('ID未指定,无法获取任何数据');
	  $data = Db::name($tables)->field('*')->where("Id",$id)->find();
	  if ( !$data ) $this->error('资料不存在，请重新操作！');
	    if ($save == '') {
		  return $this->fetch('',['data'=>$data,'tables'=>$tables,'upload'=>true,'editor'=>true,'title'=>'编辑信息']);
	    } else {
	      if ($save == '确定修改') {
		  $result = Db::name($tables)->where("Id",$id)->update($this->fieldArr('domain,intro,pic,sty,content,title,keyword,metades'));
		  if ( $result ) {
		    $this->success('数据更新成功', url('website/aboutlist', 'tables=' . $tables . '&sty=' . $data['sty']));
		  } else {
		    $this->error('数据更新失败，请重新试试吧', url('website/aboutmod', 'tables=' . $tables . '&id=' . $id));
		  }
	    }
	  }
    }
	
    public function datalist(){
      $sty     = input('sty', 1, 'intval');
      $where   = '1=1 AND sty=' . $sty;
      $topic   = input('topic', '');
	  $enabled = input('enabled', 0,'intval');
	  $istop   = input('istop', 0,'intval');
      $inftype = input('inftype', 0, 'intval');
      if ($topic != '')    $where .= " AND topic LIKE'%$topic%'";
      if ($inftype != 0)   $where .= ' AND inftype=' . $inftype;
	  if ( $enabled == 1 ) $where .= ' AND enabled=0';
	  if ( $enabled == 2 ) $where .= ' AND enabled=1';
	  if ( $istop == 1 )   $where .= ' AND istop=0';
	  if ( $istop == 2 )   $where .= ' AND istop=1';
      $this->pageDisplay(array('where' => $where, 'sty' => $sty, 'title' => '资料列表'));
	  return view();
    }
	
    public function dataadd(){
      $send       = input('post.send', '');
      $tables     = input('tables', '');
      $martables  = input('martables', '');
      $sty        = input('sty', 1, 'intval');
      if ($tables == '') $this->error('数据表为空，无法获取数据');
      if ($send == '') {
		$datashow = array();
		$datashow['mdata'] = $this->getSelect($martables, $sty);
		return $this->fetch('',['dshow'=>$datashow,'tables'=>$tables,'martables'=>$martables,'sty'=>$sty,'date'=>true,'upload'=>true,'editor'=>true,'title'=>'添加资料']);
      } else {
		if ($send == '提交') {
		  $result = Db::name($tables)->insertGetId($this->fieldArr(array('inftype', 'source', 'author', 'intro', 'content','tag','title', 'keyword', 'metades', 'istop', 'date', 'pic', 'linkurl', 'sty')));
		  if ($result) {
			$seores = sendSeo($result,1);
			if ( $seores['state'] == 1 ) {
			  $this->success('资料添加成功！'.$seores['msg'], url('website/datalist', 'tables=' . $tables . '&sty=' . $sty . '&martables=' . $martables));
			} else {
			  $this->success('资料添加成功！', url('website/datalist', 'tables=' . $tables . '&sty=' . $sty . '&martables=' . $martables));
			}
		  } else {
			$this->error('资料添加失败，请重新试试吧', url('website/dataadd', 'tables=' . $tables . '&sty=' . $sty . '&martables=' . $martables));
		  }
		}
      }
    }

    public function datamod(){
      $save       = input('post.send', '');
      $tables     = input('tables', '');
      $martables  = input('martables', '');
      $id         = input('id', 0,'intval');
      if ( $tables == '' ) $this->error('数据表为空，无法获取数据', url('index/index'));
      if ( !$id )          $this->error('ID未指定,无法获取任何数据');
	  $data = Db::name($tables)->field('*')->where(array('Id' => $id))->find();
	  if ( !$data )        $this->error('资料不存在，请重新操作！');  
	  if ($save == '') {
	    $datashow = array();
		$datashow['mdata']     = $this->getSelect($martables, $data['sty']);
		$datashow['tables']    = $tables;
		$datashow['martables'] = $martables;
		return $this->fetch('',['data'=>$data,'dshow'=>$datashow,'inftopic'=>$this->gettopic($martables, $data['inftype']),'tables'=>$tables,'martables'=>$martables,'date'=>true,'upload'=>true,'editor'=>true,'title'=>'编辑资料']);
	  } else {
		if ($save == '确定修改') {
		  $result = Db::name($tables)->where('Id',$id)->update($this->fieldArr(array('inftype', 'source', 'author', 'intro', 'content','tag','title', 'keyword', 'metades', 'istop', 'date', 'pic', 'linkurl')));
		  if ($result) {
			$this->success('资料修改成功！', url('website/datalist', 'tables=' . $tables . '&sty=' . $data['sty'] . '&martables=' . $martables));
		  } else {
			$this->error('资料修改失败，请重新试试吧', url('website/datamod', 'tables=' . $tables . '&sty=' . $data['sty'] . '&martables=' . $martables . '&id=' . $id));
		  }
		}
	  }
    }
	
    public function datatypelist(){
      $sty = input('sty', 1, 'intval');
      $this->pageDisplay(array('where' => array('sty' => $sty), 'sty' => $sty, 'title' => '类别管理'));
	  return view();
    }
	
    public function datatypeadd(){
      $tables = input('tables', '');
      $send   = input('post.send', '');
      $sty    = input('sty', 1, 'intval');
      if ($tables == '')  $this->error('数据表为空，无法获取数据', url('index/index'));
      if ($send == '') {
		return $this->fetch('',['title'=>'添加类别','sty'=>$sty,'tables'=>$tables]);
      } elseif ($send == '提交') {
		$result = Db::name($tables)->insert($this->fieldArr('domain,sty'));
		if ($result) {
		  $this->success('资料添加成功', url('website/datatypelist', 'tables=' . $tables . '&sty=' . $sty));
		} else {
		  $this->error('类别添加失败，请重新试试吧', url('website/datatypeadd', 'tables=' . $tables . '&sty=' . $sty));
		}
      }
    }

    public function datatypemod(){
      $save   = input('post.send', '');
      $tables = input('tables', '');
      $id     = input('id', 0, 'intval');
      if ( $tables == '' ) $this->error('数据表为空，无法获取数据', url('index/index'));
      if ( !$id )          $this->error('ID未指定,无法获取任何数据');
	  $data = Db::name($tables)->field('*')->where('Id',$id)->find();
	  if ( !$data )        $this->error('无法获取数据', url('index/index')); 
      if ( $save == '' ) {
		return $this->fetch('',['title'=>'添加类别','data'=>$data,'tables'=>$tables]);
      } else {
		if ($save == '确定修改') {
		  $result = Db::name($tables)->where('Id',$id)->update($this->fieldArr(array('domain')));
		  if ( $result ) {
			$this->success('资料修改成功', url('website/datatypelist', 'tables=' . $tables . '&sty=' . $data['sty']));
		  } else {
			$this->error('资料修改失败', url('website/datatypemod', 'tables=' . $tables . '&sty=' . $data['sty'] . '&id=' . $id));
		  }
		}
	  }
    }
	
    public function message(){
      $this->pageDisplay(array('title' => '留言信息管理', 'tables' => 'message', 'order' => 'date DESC'));
	  return view();
    }
	
    public function messageshow(){
      $save   = input('post.send', '');
      $id     = input('id', 0, 'intval');
      $tables = 'message';
	  if ( !$id )    $this->error('ID未指定,无法获取任何数据');
	  $data   = Db::name($tables)->field('*')->where('Id',$id)->find();
	  if ( !$data )  $this->error('无法获取数据');
	  if ($save == '') {
		return $this->fetch('',['title'=>'查看留言信息','data'=>$data]);
	  } else {
		if ($save == '处理留言') {
		  $enabled = input('post.enabled', 0, 'intval');
		  $result  = Db::name($tables)->where('Id',$id)->update(array('enabled' => $enabled, 'redate' => dates()));
		  if ($result) {
			$this->success('留言处理成功', url('website/message'));
		  } else {
			$this->error('留言处理失败', url('website/messageshow', 'id='.$id));
		  }
		}
	  }
    }
	
    public function linkslist(){
	  $sty = input('sty',1,'intval');
      $this->pageDisplay(array('title' => '资料管理', 'tables' => 'links', 'where'=>'1=1 and sty='.$sty,'sty'=>$sty, 'systitle' => '资料', 'subtitle' => '资料'));
	  return view();
    }
	
    public function linksadd(){
      $send     = input('post.send', '');
	  $sty      = input('sty',1,'intval');
	  $tables   = input('tables', 'links','');
      if ($send == '') {
		return $this->fetch('',['title'=>'添加资料','sty'=>$sty,'tables'=>$tables,'upload'=>true]);
      } elseif ($send == '提交') {
        $result = Db::name($tables)->insert($this->fieldArr(array('linkurl', 'pic', 'sty')));
        if ($result) {
          $this->success('资料添加成功', url('website/linkslist','sty='.$sty.'&tables='.$tables));
        } else {
          $this->error('资料链接添加失败，请重新试试吧', url('website/linksadd','sty='.$sty.'&tables='.$tables));
        }
      }
    }
	
    public function linksmod(){
      $save    = input('post.send', '');
      $id      = input('id', 0, 'intval');
	  $sty     = input('sty',1,'intval');
	  $tables  = input('tables','links','');
      if ( !$id )  $this->error('ID未指定,无法获取任何数据');
	  $data = Db::name($tables)->field('*')->where(array('Id' => $id))->find();
	  if ( !$data ) $this->error('数据不存在.');
	  if ($save == '') {
		return $this->fetch('',['title'=>'编辑资料','data'=>$data,'tables'=>$tables,'upload'=>true]);
	  } else {
		if ($save == '确定修改') {
		  $result = Db::name($tables)->where('Id',$id)->update($this->fieldArr(array('linkurl', 'pic')));
		  if ( $result ) {
			$this->success('资料修改成功', url('website/linkslist','sty='.$data['sty'].'&tables='.$tables));
		  } else {
			$this->error('资料修改失败', url('website/linksmod', 'id='.$id.'tables='.$tables));
		  }
		}
	  }
    }
	
    public function onlinelist(){
      $this->pageDisplay(array('tables'=>'onlineqq'));
	  return view();
    }
	
    public function onlineadd(){
	  $send   = input('post.send', '');
	  $tables = input('tables', '');
	  if ($tables == '')  $this->error('数据表为空，无法获取数据');
	  if ($send == '') {
		return $this->fetch('',['title'=>'添加在线客服','tables'=>$tables]);
	  } else {
		if ($send == '提交') {
		  $result = Db::name($tables)->insert($this->fieldArr(array('amount','weixin','phone')));
		  if ( $result ) {
			$this->success('客服添加成功', url('website/onlinelist', 'tables=' . $tables));
		  } else {
			$this->error('客服添加失败，请重新试试吧', url('website/onlineadd', 'tables=' . $tables));
		  }
		}
	  }
    }
	
    public function onlinemod(){
      $save   = input('post.send', '');
      $tables = input('tables', '');
      $id     = input('id', 0, 'intval');
      if ( $tables == '' ) $this->error('数据表为空，无法获取数据');
      if ( !$id )          $this->error('ID未指定,无法获取任何数据');
	  $data = Db::name($tables)->field('*')->where('Id',$id)->find();
	  if ( !$data )        $this->error('资料不存在，请重新操作！'); 
	  if ($save == '') {
		return $this->fetch('',['title'=>'编辑在线客服','data'=>$data,'tables'=>$tables]);
	  } else {
		if ( $save == '确定修改' ) {
		  $result = Db::name($tables)->where(array('Id' => $id))->update($this->fieldArr(array('amount','weixin','phone')));
		  if ($result) {
			$this->success('客服更新成功', url('website/onlinelist', 'tables=' . $tables));
		  } else {
			$this->error('客服更新失败，请重新试试吧', url('website/onlinemod', 'tables=' . $tables . '&id=' . $id));
		  }
		}
	  }
    }
	
	public function article(){
	  $id     = input('id',0,'intval');
	  $tables = input('tables','');
	  if ( !$id )          $this->error('ID未指定，请重新再试~');
	  if ( $tables == '' ) $this->error('数据表为空，无法获取数据');
	  $data = Db::name($tables)->field('*')->where('Id',$id)->find();
	  if ( !$data )        $this->error('资料不存在!');
	  return $this->fetch('',['title'=>'数据预览','data'=>$data]);
	}
	
    public function tdklist(){
      $this->pageDisplay(array('where' => '1=1 AND tid=0', 'tables' => 'title','order'=>'Id ASC'));
	  return view();
    }
	
    public function tdkadd(){
      $send   = input('post.send', '');
      $tables = 'title';
      if ($send == '') {
		return $this->fetch('',['title'=>'添加资料','tables'=>$tables]);
      } else {
        if ($send == '提交') {
		  $result = Db::name($tables)->insert($this->fieldArr('title,keyword,remark,metades,date','',false));
		  if ($result) {
		    $this->success('资料添加成功', url('website/tdklist'));
		  } else {
		    $this->error('资料添加失败，请重新试试吧', url('website/tdkadd'));
		  }
        }
      }
    }

    public function tdkmod(){
      $save   = input('post.send', '');
      $tables = 'title';
      $id     = input('id', 0, 'intval');
      if ( !$id )   $this->error('ID未指定,无法获取任何数据');
	  $data = Db::name($tables)->field('*')->where('Id',$id)->find();
	  if ( !$data ) $this->error('资料不存在，请重新操作！');
	  if ($save == '') {
		return $this->fetch('',['title'=>'编辑资料','data'=>$data,'tables'=>$tables]);
	  } else {
		if ($save == '确定修改') {
		  $result = Db::name($tables)->where('Id',$id)->update($this->fieldArr('title,keyword,remark,metades,date','',false));
		  if ($result) {
			$this->success('资料更新成功', url('website/tdklist'));
		  } else {
			$this->error('资料更新失败，请重新试试吧', url('website/tdkmod', 'id='.$id));
		  }
		}
	  }
    }
	
}