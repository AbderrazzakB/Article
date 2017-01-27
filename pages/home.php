<div class="row">
    <div class="col-sm-4">
        <ul>
            <?php foreach(\App\Table\Categorie::all() as $categorie): ?>
                <li><a href="<?= $categorie->getUrl(); ?>"><?= $categorie->name; ?></a></li>
            <?php endforeach; ?>
        </ul>
    </div>
    <div class="col-sm-6">
        <?php foreach(\App\Table\Article::getLast() as $post): ?>
            
        <?php endforeach; ?>
    </div>
    
</div>