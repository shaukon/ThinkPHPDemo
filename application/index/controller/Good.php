<?php


namespace app\index\controller;



namespace app\index\controller;

use app\index\controller\Base;
use think\Request;
class Good extends Base
{
    // 所有操作方法都需要登录。
    protected $is_check_login = ['*'];
    public function buy(){
        echo '我要买东西';
    }

    public function car(){
        echo "放入购物车";
    }

    public function delete(){
        echo "我要退货";
    }



}