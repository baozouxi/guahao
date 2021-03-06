<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Dialog extends Model
{
    public $timestamps = false;

    public $fillable = ['data', 'admin_id', 'content', 'date'];
}
