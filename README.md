OpenChatPhp - описание, установка и настройка

Open Chat Multichannel. Многоканальный открытый веб-чат

Functions/Функции
You can post/Возможности публикации
Messages/Сообщений
Images/Изображений
Links/Ссылок
Create Channels/Создание каналов
Short tags/Собственный способ оформления текста

Stack/Технологии:
PHP (MVC like), OOP. PHP7)
MysqLi (Prepared statements)
Ajax (XMLHttp)
HTML (html5)
CSS (ccs3)

Для работы с закрытым каналом требуется указать общий пароль (по умолчанию: 123).
Пароль устанавливается в файле: conf/Class_Connect, строка protected $pass_create_channel, используется шифрование  md5

Возможность использования в локальной сети! Экономия трафика! Минимум дизайна для самостоятельной настройки!
По всем вопросам:
ivangavr777@gmail.com
Пример работы чата: http://comb.org.ru/chat/index.php


Установка
1) Закачайте файлы на сервер
2) Отредактируйте: conf/Class_Connect.php
3) Переименуйте _htaccess в .htaccess (если используете Apache)
Сервер должен поддерживать mod rewrite
4) База данных в chat.sql. Загрузите через phpmyadmin
5) Пароль и имя БД можно задать в файле: conf/Class_Connect.php
6) Количество видимых комнат чата можно отредактировать в файле: lib/view/Class_ListChannels.php, строка номер 30 - "chat LIMIT 100"
7) В conf/Class_Connect.php теперь можно настроить пароль для создания канала, строка 11,
protected $pass_create_channel
8) Количество всех сообщений чата настраивается
в файле: lib/Class_Count_Delete_Messages.php (строка 60)
9) Выделение текста жирным, курсивом или цветом
с помощью следующего кода: b->жирный, i->курсив,
color->red->красный текст
10) Можно отправить приватный alert пользователю.
Синтаксис: alert->user->Привет!
11) Максимальная длина сообщения 500 символов. Длину сообщения
можно изменить в файле: lib/Class_Send_Messages.php на строке 84
(substr($gettext, 0, 500);)
12) Возможность настроить обновление окна браузера (по умолчанию 30 минут).
Настраивается в файле: lib/js/cross_object.js, на строке 129 
('refresh()', 1800000000);)
13) Возможность настроить интервал проверки новых сообщений в
файле: lib/js/cross_object.js, на строке 135 
(var time = 3000;) 

Installaton
1) Upload files to your server
2) Edit: conf/Class_Connect.php
3) Raname _htaccess to .htaccess
Server must support ModRewrite
4) chat.sql is database example. You can use phpmyadmin for import
5) You can add password and BD name in a file: conf/Class_Connect.php
6) You can edit numbers of chat rooms in the following file: lib/view/Class_ListChannels.php, line number 30 - "chat LIMIT 100"
7) In conf/Class_Connect.php you can set a password for creating channels, line 11,
protected $pass_create_channel
8) Number of all messges in: lib/Class_Count_Delete_Messages.php (line 60)
9) You can change text style, using the following code:b->bold, i->italic,
color->red->red text
10) There is a possibility to send a private alert to a user. Syntax: alert->user->Hello!
11) Max number of symbols is 500.
You can edit message length in: lib/Class_Send_Messages.php, line 84 (substr($gettext, 0, 500);)
12) You can set an interval for refreshing the window in a file: 
lib/js/cross_object.js, line 129 
('refresh()', 1800000000);)
13) You can set an interval for checking new messages in a file: 
lib/js/cross_object.js, line 135 
(var time = 3000;) 

2019. MSK

Дополнительное описание
Система состоит из двух частей, серверной и клиентской.
Серверная часть написана архитектурным подходом на языке PHP7 с  использованием классов. Совместима с более ранними версиями языка PHP. 
Клиентская часть написана на Ajax (JavaScript).
Механика системы: клиентское приложение (браузер с поддержкой Ajax)
раз в три секунды опрашивает сервер и печатает последние сообщения.
При отправке сообщения на стороне сервера проверяется количество
сообщений в базе данных, если их число больше n, то более ранние сообщения
удаляются 
  
