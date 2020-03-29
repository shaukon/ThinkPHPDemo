<?php


namespace app\index\controller;

use app\index\controller\Base;
use think\Request;
class comment extends Base
{
    protected $is_check_login = ['add'];
    public function add(){
        echo '我想发表评论';
    }

    public function edit(){
        echo "编辑评论";
    }

}