<?php
// Константы для директорий
require_once './conf/defines.php';

// Маршруты
$routes = [
    '/chat/' => 'linker',
    '/router' => 'linker'
];

function getMethod(array $routes)
{
    $path = '/' . ltrim(str_replace('index.php', '', parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH)), '/');
    foreach ($routes as $route => $method) {
        if ($path === $route) {
            return $method;
        }
    }
    return 'notFound';
}

// Функция для корня
function index()
{
    require_once './linker/linker.php';
}

function linker()
{
    require_once './linker/linker.php';
}

function notFound()
{
    header("HTTP/1.0 404 Not Found");
    return 'Нет такой страницы';
}

echo getMethod($routes);