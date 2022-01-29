<?php
//Удаление BACKENED
require_once LIB . 'Class_Messages.php';

require_once STYLE . 'header.html';

//Окно чата
require_once HTML . 'div_updatebox.html';
//Форма отправки BACKENED
require_once HTML . 'send_form.html';

echo '<script>';
//Показать список каналов JS FRONTED
require_once(LIBJS . 'list_of_channels.js');
//Скролл вниз FRONTEED
require_once LIBJS . 'scroll_to_bottom.js';
//Файл с сообщениями чата, 15 сообщ. каждые 3 сек
require_once LIBJS . 'cross_object.js';
//Отправка FRONTED
require_once LIBJS . 'send.js';
echo '</script>';

