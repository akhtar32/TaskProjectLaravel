<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserItem extends Model
{
    use HasFactory;


    function  item()
    {
        return $this->belongsTo(Item::class,"item_id","item_id");
    }

    protected  $fillable=['user_id','item_id'];
    public $timestamps = false;
}
