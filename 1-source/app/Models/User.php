<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
// use Illuminate\Contracts\Auth\Authenticatable;

class User extends Model
{
    use HasFactory;

    protected $table = 'users';

    protected $fillable = ['user_name','user_email','user_password'];

    // public function getAuthIdentifierName(){

    // }
    // public function getAuthIdentifier(){

    // }
    // public function getAuthPassword(){

    // }
    // public function getRememberToken(){}
    // public function setRememberToken($value){}
    // public function getRememberTokenName(){}
}
