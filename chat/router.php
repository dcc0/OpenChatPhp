<?php
// Константы для директорий
require_once './conf/defines.php';
//Коннект
require_once CONF.'Class_Connect.php';
//Основной Коннект
$connection_to = new Connect();
$connection_to->getConnection();




// Маршруты
$routes = [

	//Для директории chat
	'/chat/' => 'linker',
	//Для самого файла с роутером
    '/router' => 'linker'

];

function getRequestPath() {
    $path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

    return '/' . ltrim(str_replace('index.php', '', $path), '/');
}


function getMethod(array $routes, $path) {
    foreach ($routes as $route => $method) {
        if ($path === $route) {
            return $method;
        }

    }

    return 'notFound';
}


// Функция для корня
function index() {
    require_once './linker/linker.php';
}


//3. Функция для вызова линковщика
function linker() {
     require_once './linker/linker.php';

}



//При попытке вызвать сам router.php
function notFound() {
    header("HTTP/1.0 404 Not Found");
    return 'Нет такой страницы';
}


$path = getRequestPath();

//2. Опредилим, какую функцию вызвать
$method = getMethod($routes, $path);

//1. Вызов линковщика
echo $method();
?>
