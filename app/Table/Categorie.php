<?php
namespace App\Table;

use App\App;

class Categorie{
    private static $table = 'category';

    public static function all()
    {
        return App::getDb()->query("SELECT * FROM " .self::$table ."", __CLASS__);
    }

    public function getUrl()
    {
        return 'index.php?p=category&id='.$this->category_id;
    }
    
}