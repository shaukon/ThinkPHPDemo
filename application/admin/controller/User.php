<?php
namespace app\admin\controller;


use app\admin\controller\Base;
use app\admin\model\User as UserModel;
use app\admin\validate\User as UserValidate;

class User extends Base
{
    public function index(){
        return $this->fetch();
    }
    public function userlist(){
        $data = UserModel::paginate(3);
        $page = $data->render();

        $this->assign('data',$data);
        $this->assign('page',$page);
        return $this->fetch();
    }
    public function add(){
        return $this->fetch();
    }
    // 新增管理员的方法
    public function insert(){
        $data = input('post.');

        $val = new UserValidate();

        if (!$val->check($data)){
            $this->error($val->getError());
            exit();
        }
        $user = new UserModel($data);
        $ret = $user->allowField(true)->save();
        if ($ret){
            $this->success('新增管理员成功','User/userlist');
        }else{
            $this->error('新增管理员失败');
        }

    }

    public function edit(){
        $id = input('get.id');
        $data = UserModel::get($id);
        $this->assign('data',$data);
        return $this->fetch();
    }

    public function update(){
        $data = input('post.');

        $id = $data['id'];

        $val = new UserValidate();

        if (!$val->check($data)){
            $this->error($val->getError());
            exit();
        }
        $user = new UserModel();
        $ret = $user->allowField(true)->save($data,['id'=>$id]);
        if ($ret){
            $this->success('修改管理员成功','user/userlist');
        }else{
            $this->error('修改管理员失败');
        }

    }

    public function delete(){
        $id = input('get.id');
        // 软删除
        $ret = UserModel::destroy($id);
        if ($ret){
            $this->success('删除管理员成功','user/userlist');
        }else{
            $this->error('删除管理员失败');
        }
    }



}