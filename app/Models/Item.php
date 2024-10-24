<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;


    function user_item()
    {
         return $this->hasMany(UserItem::class,'item_id');
    }
}
