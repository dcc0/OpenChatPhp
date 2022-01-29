<?php
# Date: 29.01.2022 (0:35)
require_once 'Class_ChatView.php';
//Запрос последних сообщний. Параметр номер последнего сообщения.
print ChatView::printingOut($_GET['last_message_id'], $_GET['channel']);