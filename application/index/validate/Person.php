<?php
namespace app\index\validate;

use think\Validate;

class Person extends Validate
{
    protected $rule = [
        'name|用户名' => 'require|min:3',
        'password|密码' => 'require|min:6',
    ];

    protected $message = [
        'name.require' => '用户名不能为空',
        'name.min' => '用户名长度不能小于3',
        'password.require' => '密码不能为空',
        'password.confirm' => '两次密码不一致'
    ];

}