<?php
//Конфиг
require_once __DIR__ . '/../../conf/Class_Database.php';


//Показать список каналов
    class ListChannels {
        
    protected $connection = null;
    
            
    public function __construct($mysql)
      {
        
        $connection = $mysql->getConnection();
        
        if (is_null($connection))
          {
            throw new Exception('Нет соединения!');
          }
        
        $this->connection = $mysql->getConnection();
        
      }
        
            
    public function getChannels()
      {
          
    $show_channels=$this->connection->query("SELECT DISTINCT chatname from chat LIMIT 100");

        while($val=mysqli_fetch_array($show_channels)) 
        $all_channels_array[]=$val[0];

        return $all_channels_array;

    }
        
}
//Коннеккт
$connection_to = new Database();
$connection_to->getConnection();
    
//Каналы    
$get_channels = new ListChannels($connection_to);    
$all_channels_array=$get_channels->getChannels();