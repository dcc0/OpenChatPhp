<?php
//Дополнительно закрываем сраницу с компановщиком
if ($_SERVER['REQUEST_URI']=='/chat/linker/linker.php')
{
    header("Location: ../index.php");
    exit();
  }
  
  
 //Закрываем страницу чата
  if ($_SERVER['REQUEST_URI']=='/chat/lib/view/Class_Printing.php')
{
    header("Location: ../../index.php");
    exit();
  }
  
  
  
  //Закрываем страницу отправки
  if ($_SERVER['REQUEST_URI']=='/chat/lib/Count_Delete_Messages.php')
{
    header("Location: ../../index.php");
    exit();
  }
?>