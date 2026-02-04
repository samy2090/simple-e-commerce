<?php

namespace App\Models;

use App\Models\Image;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Spatie\Translatable\HasTranslations;

class SiteContent extends Model
{
    use SoftDeletes;
    use HasTranslations;

    public $translatable = ['title','content','description','link_text'];
    protected $guarde = []; 
    

    public function images(): HasMany
    {
        return $this->hasMany(Image::class,'content_id');
    }
}

