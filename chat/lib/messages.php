<?php
# Date: 29.01.2022 (2:11)
require_once 'Class_Messages.php';
//Отправим сообщения и удалим старые.
Messages::sendText($_GET['text'], $_GET['userlogin'], $_GET['channel'], $_GET['pass']);