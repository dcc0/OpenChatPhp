<?php
require_once __DIR__ . '/../linker/close_page.php';

class Connect {

	public static $link;
	protected $host = 'localhost';
	protected $user = 'root';
	protected $password = '123';
	protected $db_name = 'chat';
	protected $pass_create_channel = '202cb962ac59075b964b07152d234b70';

    public function __construct () {

	$this->link=mysqli_connect('p:' . $this->host, $this->user, $this->password, $this->db_name ) or exit('No connection...');
	$this->link->set_charset("utf8mb4");
	  }

	  function getConnection() {

	return $this->link;

		}

	  function getPasscreatechannel() {

	return $this->pass_create_channel;

		}

	}


?>
