<?php
//Дополнительно закрываем сраницу
require_once __DIR__ . '/../linker/close_page.php';
require_once __DIR__ . '/view/Class_ListChannels.php';

//Проверим, что данные пришли 
if (!isset($_GET['channel']) || empty ($_GET['channel'])) {
    $_GET['channel'] = 'chat';
}

class CountDeleteMessages
{
    /*Удалим лишние*/
    public static function deleteMessages(string $channel): void
    {
        // Классы можно вызывать из других классов, если ты не знал. Инс.
        $my_channel = in_array($channel, ListChannels::getChannels()) ? $channel : 'chat';
        // Количество сообщений
        $messages = Database::connect()->query('select count(*) from chat where chatname = ?', $my_channel)->fetchColumn();
        if ($messages > 15) {
            Database::connect()->query('delete from chat where chatname = ? order by id limit 1');
        }
    }
}