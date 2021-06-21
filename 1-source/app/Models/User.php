<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasFactory;

    protected $table = 'users';

    protected $primaryKey = 'user_id';

    protected $fillable = ['user_name', 'user_email', 'user_password'];

    protected $attributes = 
    [
        'user_id' => null,
        'user_name' => null,
        'user_email' => null,
        'user_password' => null,
        'trainer_id' => null,
        'type_id' => null,
        'group_id' => null,
        'updated_at' => null,
        'deleted_at' => null,
        'status' => null
    ];
    // public function getAuthIdentifierName(){

    // }
    // public function getAuthIdentifier(){

    // }

    public function getAuthPassword()
    {
        return $this->user_password;
    }

    public function getUserInformation()
    {
        return $this->getAttributes();
    }

    // public function getRememberToken(){}
    // public function setRememberToken($value){}
    // public function getRememberTokenName(){}
}
