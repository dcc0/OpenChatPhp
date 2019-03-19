<?php
require_once __DIR__ . '/../linker/close_page.php';

class Connect {

	public static $link;
	protected $host = 'localhost';
	protected $user = 'u0643076_sneg';
	protected $password = '?wZ545i9KcT3';
	protected $db_name = 'u0643076_sneg';

    public function __construct () {

	$this->link=mysqli_connect('p:' . $this->host, $this->user, $this->password, $this->db_name ) or exit('No connection...');
	$this->link->set_charset("utf8mb4");
	  }

	  function getConnection() {

	return $this->link;

		}



	}


?>
