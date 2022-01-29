<?php
require_once __DIR__ . '/../../conf/Class_Database.php';
# Date: 29.01.2022 (1:01)
class ChatView
{
    private const QUERY_CHANNELS = 'select distinct chatname from chat limit 100';
    private const QUERY_MESSAGES = 'select * from chat where id > ? and chatname = ? order by id limit 15';
    private static function channels(): array
    {
        $show_channels = Database::connect()->query(self::QUERY_CHANNELS)->fetchAll();
        foreach ($show_channels as $row) {
            $all_channels[] = $row->chatname;
        }
        return $all_channels;
    }
    public static function getChannels(): array
    {
        return self::channels();
    }

    public static function getChannelsInJson()
    {
        return json_encode(self::channels());
    }

    public static function printingOut(int $last_id, string $channel = 'chat')
    {
        return json_encode(Database::connect()->query(self::QUERY_MESSAGES, [$last_id, trim($channel)])->fetchAll(PDO::FETCH_ASSOC));
    }
}