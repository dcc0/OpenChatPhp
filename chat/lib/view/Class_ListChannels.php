<?php
require_once __DIR__ . '/../../conf/Class_Database.php';

//Показать список каналов
class ListChannels
{
    public static function getChannels(): array
    {
        $show_channels = Database::connect()->query('select distinct chatname from chat limit 100')->fetchAll();
        foreach ($show_channels as $row) {
            $all_channels_array[] = $row->chatname;
        }
        return $all_channels_array;
    }
}