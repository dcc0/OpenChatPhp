<?php
//Дополнительно закрываем сраницу
require_once __DIR__ . '/../../linker/close_page.php';
//Коннект
require_once __DIR__ . '/../../conf/Class_Connect.php';
//Список каналов
require_once './Class_ListChannels.php';
//Класс вывода
require_once 'Class_Cycle.php';



//Проверим имя канала через GET
if(!isset($_GET['channel']) || empty($_GET['channel']))
$_GET['channel'] = 'chat';



class Printing
  {
    protected $connection = null;
    protected $fetch;
    protected $my_channel;
	protected $new_cyle;
    public function __construct($mysql, $new_cyle)
      {
        $connection = $mysql->getConnection();
        if (is_null($connection))
          {
            throw new Exception('Нет соединения!');
          }
        $this->connection = $mysql->getConnection();
		$this->new_cyle=$new_cyle;
      }
	
    /*Запрашиваем последние 15 сообщений*/
    private function fetchingOut($last_message_id, $channel)
      {
            $this->my_channel=$channel;
            //Запрос
            $stmt=$this->fetch = $this->connection->prepare("SELECT * from chat WHERE id > ? AND chatname = ? ORDER by id ASC LIMIT 15");
            $stmt->bind_param('ds',  $last_message_id, $channel);
            $stmt->execute();
            $result=$stmt->get_result();
            return  $result;
            
	//В комментарии ниже историческое название метода
	//return $this->new_cyle->startCycleFetchAssocAndReturnJsonFromClassChatUsingMethodPrintingOutAndDontBeSoSeriousHaveANiceDay( $result);
		
		
    }
	
    public function printingOut($last_id, $channel)
      {
        $data = $this->fetchingOut($last_id, $channel);
        //Непосредственно цикл вывода в другом класса. Class_Cycle.php        
         return json_encode($this->new_cyle->FethcAssocArrayReturnJson($data));
      }
  }
//Коннект к базе
$connection_to = new Connect();
//Новый контекст для цикла
$new_cyle = new Cycle($array_for_cycle, $mybject);
//Вывод
$data          = new Printing($connection_to, $new_cyle);
//Запрос последних сообщний. Парамерт номер последненего сообщения
$newarr_data=$data->printingOut($_GET['last_message_id'],trim($_GET['channel']));
print $newarr_data;
?>
