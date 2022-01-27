<?php
//Дополнительно закрываем сраницу
require_once __DIR__ . '/../../linker/close_page.php';
//Коннект
require_once __DIR__ . '/../../conf/Class_Database.php';
//Список каналов
require_once './Class_ListChannels.php';

//Проверим имя канала через GET
if (!isset($_GET['channel']) || empty($_GET['channel'])) {
    $_GET['channel'] = 'chat';
}

// Вообще, получается, тут и класс не нужен, если на выхлопе у тебя идёт вывод на экран json_encode c базы данных. Инс.
class Printing
{
    /**
     * Я пытался понять, что делает Class_Cycle->FethcAssocArrayReturnJson(), но это сильнее меня.
     * Берёт массив из БД и кодирует его? Зачем так изгаляться?
     * Если я понял всё не так и сломал — отпиши, обсудим. Инс.
     */
    public static function printingOut($last_id, $channel)
    {
        return json_encode(Database::connect()->query('select * from chat where id > ? and chatname = ? order by id limit 15', [$last_id, $channel])->fetchAll(PDO::FETCH_ASSOC));
    }
}

//Запрос последних сообщний. Параметр номер последнего сообщения.
print Printing::printingOut($_GET['last_message_id'], trim($_GET['channel']));

// Обрати внимание, что эта страница ничего не делает!
// Она буквально(!) выдаёт на экран данные из БД, которые никто не увидит,
// потому что в первой строке у тебя close_page.php с редиректом куда-то там.
// Инс.