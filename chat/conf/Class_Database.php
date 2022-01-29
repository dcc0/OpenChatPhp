<?php
require_once 'Class_Config.php';
class Database
{
    private static ?self $link;
    private PDO $db;

    public function __construct()
    {
        $this->init();
    }

    //Потому что в конструкторе нельзя инициализировать классы.
    //PDO упрощает подготовленные выражения.
    private function init()
    {
        $dsn = 'mysql:dbname=' . Config::db()->database . ';host=' . Config::db()->host . ';port=' . Config::db()->port . ';charset=utf8mb4;';
        $this->db = new PDO($dsn, Config::db()->user, Config::db()->password);
        $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    // Синглетон, чтобы не плодить подключения.
    public static function connect(): self
    {
        if (is_null(self::$link)) {
            self::$link = new self();
        }
        return self::$link;
    }

    //Подготовленные запросы
    public function query(string $query, $values = null)
    {
        if (is_null($values)) {
            $values = [];
        } elseif (!is_array($values)) {
            $values = [$values];
        }
        $stmt = $this->db->prepare($query);
        $stmt->execute($values);
        return $stmt;
    }
}