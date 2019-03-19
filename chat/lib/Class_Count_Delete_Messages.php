<?php
//Дополнительно закрываем сраницу
require_once __DIR__ . '/../linker/close_page.php';
require_once __DIR__ .'/view/Class_ListChannels.php';

//Проверим, что данные пришли 
if(!isset($_GET['channel']) || empty ($_GET['channel'])) 
$_GET['channel'] = 'chat';


class Count_Delete_Messages
  {
    
    protected $connection = null;
    protected $del;
    protected $my_channel;
    
    
    
    public function __construct($mysql)
      {
        
        $connection = $mysql->getConnection();
        
        if (is_null($connection))
          {
            throw new Exception('Нет соединения!');
          }
        
        $this->connection = $mysql->getConnection();
      }
    
    
        
      
    
    /*Удалим лишние*/
    
    public function deleteMessages($channel, $all_channels_array)
      {
         
         if (in_array($channel, $all_channels_array)) {
                $this->my_channel  = $channel;
          } else 
          {
              $this->my_channel  = 'chat';
              
          }
         
         
          
         //Количество сообщений
         $messages = $this->connection->prepare("SELECT COUNT(*) FROM chat WHERE chatname = ?") or exit(' ');
         $messages ->bind_param('s',  $this->my_channel);
         $messages ->execute();
         $result=$messages->get_result();
         $messages = $result->fetch_array();

    
        if ($messages[0] > 15) {

                  $stmt = $this->connection->prepare("DELETE FROM chat WHERE chatname = ?  ORDER BY id ASC LIMIT 1") or exit('not ok');
                  $stmt->bind_param('s',  $this->my_channel);
                  $stmt->execute();
            }
          
      }
    
  }

$count_delete_object = new Count_Delete_Messages($connection_to);
$count_delete_object->deleteMessages(trim($_GET['channel']), $all_channels_array);


?>
