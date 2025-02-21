<?php
    require_once("../../include/initialize.php");

    if (!isset($_SESSION['ACCOUNT_ID'])) {
        header("Location: module/login.php");
    } else {
      
    $routes = [
        'logs' => 'logs.php'
    ];

    $routeHandler = new RouteHandler($routes, 'logs');
    $content = $routeHandler->handleRouteAndContent();
    $routeHandler->addToGet();

    require_once("../../theme/template.php");
    }
?>