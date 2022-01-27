<?php
//Закроем прямой доступ к странице
require_once 'close_page.php';
require_once STYLE . 'header.html';

//Показать список каналов JS FRONTED
require_once(LIBJS . 'list_of_channels.js');

//Скролл вниз FRONTEED
require_once LIBJS . 'scroll_to_bottom.js';

//Окно чата
require_once HTML . 'div_updatebox.html';
//Файл с сообщениями чата, 15 сообщ. каждые 3 сек
require_once LIBJS . 'cross_object.js';

//Форма отправки BACKENED
require_once HTML . 'send_form.html';

//Отправка FRONTED
require_once LIBJS . 'send.js';

//Удаление BACKENED
require_once LIB . 'Class_Count_Delete_Messages.php';
require_once STYLE . 'footer.html';