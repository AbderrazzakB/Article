<?php 
namespace App\Table;
use App\App;
class Para
{
    public static function getArticle($id)
    {
        return App::getDb()->query(
        "SELECT
            paragraphes.id_para,
            paragraphes.nom_para,
            paragraphes.photo_path,
            paragraphes.content_para,
            paragraphes.article_id, 
            articles.nom_article, 
            articles.object, 
            articles.photo, 
            articles.category_category_id, 
            articles.auteurs_id_auteurs,
            FROM paragraphes
            LEFT JOIN articles
                ON id_article = article_id
            ",__CLASS__);
    }
}