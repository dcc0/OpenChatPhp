<?php
//Перенаправим при попытке вызвать из браузера
if($_SERVER['REQUEST_URI'] == '/chat/conf/Class_Connect.php') { header("Location: ../index.php"); exit();}

class Connect {

	public static $link;
	protected $host = 'localhost';
	protected $user = 'root';
	protected $password = '123';
	protected $db_name = 'chat';

    public function __construct () {

	$this->link=mysqli_connect('p:' . $this->host, $this->user, $this->password, $this->db_name ) or exit('No connection...');
	$this->link->set_charset("utf8mb4");
	  }

	  function getConnection() {

	return $this->link;

		}



	}


?>
