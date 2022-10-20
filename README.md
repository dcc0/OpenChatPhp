OpenChatPhp - описание, установка и настройка

Open Chat Multichannel. Written: 2019. MSK. Многоканальный открытый веб-чат
Functions/Функции
You can post:/Возможности публикации
Messages/Сообщений
Images/Изображений
Links/Ссылок
Create Channels/Создание каналов.
Short tags/Собственный способ оформления текста (например, жирный: b->текст; курсив i->текст; color->blue->какой-то текст )
Stack/Технологии:
PHP (MVL (Closer to MVC) like, Object Oriented Programming. PHP7)
MysqLi (Prepared statements - отличная защита от sql-атак)
Ajax (XMLHttp)
HTML (html5)
CSS (ccs3)

Для работы с закрытым каналом требуется указать общий пароль (по умолчанию: 123).
Пароль устанавливается в файле: conf/Class_Connect, строка protected $pass_create_channel, используется шифрование  md5

Возможность использования в локальной сети - экономия трафика!. Минимум дизайна для самостоятельной настройки!
По всем вопросам:
ivangavr777@gmail.com П
пример работы чата: http://comb.org.ru/chat/index.php


Установка
1) Закачайте файлы на сервер
2) Отредактируйте chat/conf/Class_Connect.php
3) Переименуйте _htaccess в .htaccess (если используете Apache)
Сервер должен поддерживать mod rewrite
4) База данных в chat.sql. Загрузите через phpmyadmin
5) Пароль можно задать в файле: conf/Class_Connect.php
6) Количество видимых комнат чата можно отредактировать в файле: lib/view/Class_ListChannels.php, line number 30 - "chat LIMIT 100" 
7) В conf/Class_Connect.php теперь можно настроить пароль для создания канала
8) Количество всех сообщений чата настраивается
в файле lib/Class_Count_Delete_Messages.php, строка 60
9) Выделение текста жирным, курсивом или цветом
с помощью следующего кода: b->жирный, i->курсив,
color->red->красный текст
10) Можно отправить приватный alert пользователю.
Синтаксис: alert->user->Привет!


Installaton
1) Upload files to your server
2) Edit chat/conf/Class_Connect.php
3) Raname _htaccess to .htaccess
Server must support ModRewrite
4) chat.sql is database example. You can use phpmyadmin for import
5) You can add password in a file: conf/Class_Connect.php
6) You can edit numbers of chat rooms in the following file: lib/view/Class_ListChannels.php, line number 30 - "chat LIMIT 100"  
7) In conf/Class_Connect.php you can set a password for creating channels
8) Number of all messges in lib/Class_Count_Delete_Messages.php
9) You can change text style, using the following code:b->bold, i->italic,
color->red->red text
10) There is a possibility to send a private alert to a user. 
Syntax: alert->user->Hello!
