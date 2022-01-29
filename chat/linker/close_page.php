<?php
//Закрываем страницы.
define('INDEX', '//' . $_SERVER['SERVER_NAME'] . '/index.php');
const PAGES_TO_CLOSE = [
    '/chat/linker/linker.php',
];
if (in_array($_SERVER['REQUEST_URI'], PAGES_TO_CLOSE)) {
    header(INDEX);
    exit();
}