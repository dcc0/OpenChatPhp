<?php
require_once __DIR__ . '/view/Class_ChatView.php';
# Date: 29.01.2022 (2:11)
class Messages
{
    private const QUERY_COUNT_MESSAGES = 'select count(*) from chat where chatname = ?';
    private const QUERY_DELETE_MESSAGE = 'delete from chat where chatname = ? order by id limit 1';
    private const QUERY_ADD_MESSAGE = 'insert into chat (login, text, chatname) values (?, ?, ?)';

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
        return in_array($channel, ChatView::getChannels()) || $password === Config::chatPassword() ? trim($channel) : 'chat';
    }

    //Удалим лишние
    private static function deleteMessages(string $channel = 'chat'): void
    {
        // Классы можно вызывать из других классов, если ты не знал. Инс.
        $my_channel = in_array($channel, ChatView::getChannels()) ? trim($channel) : 'chat';
        // Количество сообщений
        $messages = Database::connect()->query(self::QUERY_COUNT_MESSAGES, $my_channel)->fetchColumn();
        if ($messages > 15) {
            Database::connect()->query(self::QUERY_DELETE_MESSAGE);
        }
    }

    //Запишем в чат
    public static function sendText(string $text, string $login, string $channel, string $pass = null): void
    {
        if (!empty($text)) {
            $channel = self::setChannel($channel, $pass);
            Database::connect()->query(self::QUERY_ADD_MESSAGE, [self::setLogin($login), self::setText($text), $channel]);
            self::deleteMessages($channel);
        }
    }
}