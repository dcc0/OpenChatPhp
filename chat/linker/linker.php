<?php
require_once Config::define()->lib . 'Class_Messages.php';
require_once Config::define()->style . 'header.html';
require_once Config::define()->html . 'div_updatebox.html'; //Окно чата
require_once Config::define()->html . 'send_form.html'; //Форма отправки BACKENED
echo '<script>';
require_once Config::define()->libjs . 'list_of_channels.js'; //Показать список каналов JS FRONTED
require_once Config::define()->libjs . 'scroll_to_bottom.js'; //Скролл вниз FRONTEED
require_once Config::define()->libjs . 'cross_object.js'; //Файл с сообщениями чата, 15 сообщ. каждые 3 сек
require_once Config::define()->libjs . 'send.js'; //Отправка FRONTED
echo '</script>';