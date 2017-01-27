
<?php foreach(\App\Table\Para::getArticle($_GET['id']) as $post): ?>
    <pre>
     var_dump($post);
    </pre>
<?php endforeach ?>