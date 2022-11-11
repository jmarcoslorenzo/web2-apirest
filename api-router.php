<?php
require_once './libs/Router.php';
require_once './app/controllers/review-api.controller.php';

// crea el router
$router = new Router();

// tabla de ruteo
$router->addRoute('campeones', 'GET', 'ReviewApiController', 'showAll');
$router->addRoute('campeones/:ID', 'GET', 'ReviewApiController', 'showCampeones');
$router->addRoute('campeones/:ID', 'DELETE', 'ReviewApiController', 'delete');
$router->addRoute('campeones', 'POST', 'ReviewApiController', 'addCampeones');
$router->addRoute('campeones/:ID', 'PUT', 'ReviewApiController', 'updateProduct'); 

//$router->addRoute('reviews', 'PUT', 'Reviewcontroller', 'editreview');

// ejecuta la ruta (sea cual sea)
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);