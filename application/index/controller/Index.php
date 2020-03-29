<?php
namespace app\index\controller;

use think\Controller;
use app\index\model\Person as PersonModel;
use app\index\validate\Person as PersonValidate;
class Index extends Controller
{
    public function index()
    {
        return $this->fetch();
    }

    public function login(){
        return $this->fetch();
    }

    public function register(){
        return $this->fetch();
    }

    public function add(){
        $data = input('post.');

        $val = new PersonValidate();
        if (!$val->check($data)){
            $this->error($val->getError());
            exit();
        }
        $user = new PersonModel($data);
        $ret = $user->allowField(true)->save();
        if ($ret){
            $this->success('用户注册成功','index');
        }else{
            $this->error('用户注册失败');
        }

    }

    public function check(){
        $data = input('post.');
        if(!captcha_check($data['code'])){
            $this->error('验证码不正确！');
        }
        $user = new PersonModel();
        $result = $user->where('name',$data['name'])->find();

        if ($result){
            if ($result['password'] === $data['password']){
                session('name',$data['name']);
                $this->success('恭喜登陆成功','index');
            }else{
                $this->error('账号或密码不正确！');
            }
        } else {
            $this->error('账号或密码不正确！');
        }
    }
}
