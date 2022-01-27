<?php
const INDEX_UP_ONE = 'Location: ../index.php';
const INDEX_UP_TWO = 'Location: ../../index.php';

//Дополнительно закрываем сраницу с компоновщиком
if ($_SERVER['REQUEST_URI'] == '/chat/linker/linker.php') {
    header(INDEX_UP_ONE);
    exit();
}

//Закрываем страницу чата
if ($_SERVER['REQUEST_URI'] == '/chat/lib/view/Class_Printing.php') {
    header(INDEX_UP_TWO);
    exit();
}

//Закрываем страницу удалений
if ($_SERVER['REQUEST_URI'] == '/chat/lib/Class_Count_Delete_Messages.php') {
    header(INDEX_UP_TWO);
    exit();
}

//Закрываем страницу отправки
if ($_SERVER['REQUEST_URI'] == '/chat/lib/Class_Send_Messages.php') {
    header(INDEX_UP_TWO);
    exit();
}