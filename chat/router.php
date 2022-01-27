<?php
// Константы для директорий
require_once './conf/defines.php';
//Коннект
require_once CONF . 'Class_Database.php';
//Основной Коннект
$connection_to = new Database();
$connection_to->getConnection();

// Маршруты
$routes = [
    '/chat/' => 'linker',
    '/router' => 'linker'
];

function getRequestPath()
{
    $path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
    return '/' . ltrim(str_replace('index.php', '', $path), '/');
}

function getMethod(array $routes, $path)
{
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

$path = getRequestPath();

$method = getMethod($routes, $path);

echo $method();