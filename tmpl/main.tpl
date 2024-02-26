<!DOCTYPE html>
<html>

<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <meta name="description" content="<?= $meta_desc ?>" />
   <meta name="keywords" content="<?= $meta_key ?>" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title><?= $title ?></title>
   <!-- styles !-->
   <link rel="stylesheet" type="text/css" href="tmpl/css/style.css" media="screen" />

</head>

<body>
   <header>
      <div class="header-main container-xl">
         <div class="header-item">
            <div class="logo">PHPEngine</div>
         </div>
         <div class="header-contact">
            <div class="contact">
               <span>email@phpengine.ru</span>
            </div>
         </div>
      </div>
   </header>
   <div class="container-xl pt-4 p-responsive">
      <nav>
         <ul>
            <li><a class="nav-link" href="/">Главная</a></li>
            <li><a class="nav-link" href="/page">Внутреняя</a></li>
            <li><a class="nav-link" href="contact">Контакты</a></li>
         </ul>
      </nav>
      <main>
         <div class="d-flex" id="content"><?= $content ?></div>
      </main>
   </div>
   <footer class="container-xl p-responsive">С уважением команда нашего сайта.</footer>
   <div class="loading-overlay">
      <div class="loading-text">Загрузка...</div>
   </div>
   <!-- scripts !-->
   <script type="text/javascript" src="tmpl/js/main.js"></script>
</body>

</html>