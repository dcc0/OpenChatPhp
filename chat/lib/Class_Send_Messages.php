<?php
//Дополнительно закрываем сраницу
require_once __DIR__ . '/../linker/close_page.php';
require_once __DIR__ . '../../conf/Class_Connect.php';
require_once './view/Class_ListChannels.php';

//Проверим, что данные о канале пришли
if (!isset($_GET['channel']) || empty($_GET['channel'])) {
    $_GET['channel'] = 'chat';
}

//Пароль на создание канала
if (isset($_GET['pass']) && !empty($_GET['pass'])) {
    $pass = $_GET['pass'];
}

//Имя если не установлено
if (empty($_GET['userlogin']))
    $_GET['userlogin'] = 'Пользователь';


/*Текст и имя из формы*/
if (!empty($_GET['text'])) {
    $gettext = $_GET['text'];
    $userlogin = $_GET['userlogin'];
} else {

    exit();
}

class SendMessages
{
    protected $connection = null;
    protected $login;
    protected $text;
    protected $my_channel;

    public function __construct($mysql)
    {
        $connection = $mysql->getConnection();
        if (is_null($connection)) {
            throw new Exception('Нет соединения!');
        }
        $this->connection = $mysql->getConnection();
    }

    public function sendText($gettext, $userlogin, $channel, $all_channels_array, $pass)
    {
        //Проверим канал в списке существующих
        if (in_array($channel, $all_channels_array)) {
            $this->my_channel = $channel;
        } else {
            $this->my_channel = 'chat';
        }

        if (md5($pass) == '36c07e47c3d7b0d2d48f2bc25d027f29') {
            $this->my_channel = $channel;
        }

        //Обрежем ник и сообщение
        $gettext = substr($gettext, 0, 500);
        $userlogin = substr($userlogin, 0, 35);

        $this->login = $userlogin;
        $this->text = $gettext;

        /*Запишем в чат */
        $stmt = $this->connection->prepare("INSERT INTO chat (login, text, chatname) values (?, ?, ?)") or exit(' :( ');
        $stmt->bind_param('sss', $this->login, $this->text, $this->my_channel);
        $stmt->execute();
    }
}

//Коннект к базе
Database::connect()->query();
$connection_to = new Database();
/*Отправим сообщения*/
$send_messages = new SendMessages($connection_to);
$send_messages->sendText(htmlspecialchars($gettext), $userlogin, trim($_GET['channel']), $all_channels_array, $pass);
/*Удалим лишние*/
require_once 'Class_Count_Delete_Messages.php';