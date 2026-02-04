<?php

namespace App\Models;

use App\Models\SiteContent;
use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $guarded = [];

    public function content() 
    {
        return $this->belongsTo(SiteContent::class ,'content_id');
    }
}
