<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;

    protected $table = 'companies';

    // public function search($value)
    // {
    //     return self::where("category_id","=",$value)->paginate(10);
    // }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function trainer()
    {
        return $this->hasOne(Trainer::class, 'company_id', 'company_id');
    }
}
