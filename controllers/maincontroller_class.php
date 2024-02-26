<?php

   class MainController extends AbstractController {

      protected $title;
      protected $meta_desc;
      protected $meta_key;

      public function __construct(){
         parent::__construct(new View(DIR_TMPL));
      }

      public function action404 () {
         parent::action404();
         $this->title = "Error 404";
         $this->meta_desc = "Запршенной страницы не существует.";
         $this->meta_key = "Error  404";

         $content = $this->view->render("404", array(), true);

         $this->render($content);

      }

      public function actionIndex () {
         $this->title = "Главная страница";
         $this->meta_desc = "Главная страница";
         $this->meta_key = "Главная страница";

         $content = $this->view->render("index", array(), true);

         $this->render($content);

      }

      public function actionPage () {
         $this->title = "Внутренняя страница";
         $this->meta_desc = "Внутренняя страница";
         $this->meta_key = "Внутренняя страница";

         $content = $this->view->render("page", array(), true);

         $this->render($content);

      }

      public function actionContact () {
         $this->title = "Контакты";
         $this->meta_desc = "Контактная информация";
         $this->meta_key = "контакты, майл";

         $content = $this->view->render("contact", array(), true);

         $this->render($content);

      }

      protected function render($str) {
         $params = array();
         $params["title"] = $this->title;
         $params["meta_desc"] = $this->meta_desc;
         $params["meta_key"] = $this->meta_key;
         $params["content"] = $str;
         $this->view->render(MAIN_LAYOUT, $params);;
      }

   }

?>