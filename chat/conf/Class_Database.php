<?php

class Database
{
    private const HOST = '';
    private const USER = '';
    private const PASS = '';
    private const DB = '';
    private const PORT = '';
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
        $dsn = 'mysql:dbname=' . self::DB . ';host=' . self::HOST . ';port=' . self::PORT . ';charset=utf8mb4;';
        $this->db = new PDO($dsn, self::USER, self::PASS);
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

    public function getConnection()
    {
        return $this->link;
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