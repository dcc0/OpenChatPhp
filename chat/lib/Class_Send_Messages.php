<?php
if (empty($_GET['text'])) {
    exit();
}

//Дополнительно закрываем сраницу
require_once __DIR__ . '/../linker/close_page.php';
require_once __DIR__ . '../../conf/Class_Connect.php';
require_once './view/Class_ListChannels.php';
require_once 'Class_Count_Delete_Messages.php';

// Чтобы не проставлять значения по умолчанию через проверки в GET, имеет смысл проставить их прямо в классе. Инс.
class SendMessages
{
    private const PASSWORD_MD5 = '36c07e47c3d7b0d2d48f2bc25d027f29';
    private static function setLogin(string $login = 'Пользователь'): string
    {
        return substr($login, 0, 35);
    }

    private static function setText(string $text): string
    {
        return htmlspecialchars(substr($text, 0, 500));
    }

    //Проверим канал в списке существующих, либо создадим, если пароль подошёл.
    private static function setChannel(string $channel, string $password): string
    {
        return in_array($channel, ListChannels::getChannels()) || md5($password) === self::PASSWORD_MD5 ? trim($channel) : 'chat';
    }

    //Запишем в чат
    public static function sendText(string $text, string $login, string $channel, string $pass = null): void
    {
        Database::connect()->query('insert into chat (login, text, chatname) values (?, ?, ?)',[self::setLogin($login), self::setText($text), self::setChannel($channel, $pass)]);
    }
}

/*Отправим сообщения*/
SendMessages::sendText($_GET['text'], $_GET['userlogin'], $_GET['channel'], $_GET['pass']);

/*Удалим лишние*/
CountDeleteMessages::deleteMessages(trim($_GET['channel']));