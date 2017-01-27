<?php
namespace App\Table;

use App\App;

class Article{

    public static function getLast()
    {
        return App::getDb()->query("SELECT articles.id_article, articles.nom_article, articles.object, articles.photo, category.name as categorie  
        FROM articles 
        LEFT JOIN category 
            ON category_id = category_category_id
        ", __CLASS__);
    }

    public static function find($id)
    {
        return App::getDb()->prepare('SELECT * FROM articles WHERE id_article = ?', [$id],  __CLASS__);
    }

    public function getUrl()
    {
        return 'index.php?p=article&id='.$this->id_article;
    }
    
    public function getExtrait()
    {
        $html = '<p>'.mb_substr($this->object, 0, 200, mb_internal_encoding()).'...</p>';
        $html .= '<p><a href="'.$this->getUrl().'"</a>إقرأ المزيد></a></p>';
        return $html;
    }

    public function getPhoto()
    {
        $image = '<img src="images/'.$this->photo.'" class="w3-Bordered" alt="'.$this->nom_article.'">';
        return $image;
    }
}