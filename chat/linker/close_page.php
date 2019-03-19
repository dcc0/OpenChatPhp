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
  
  
  
  //Закрываем страницу удалений
  if ($_SERVER['REQUEST_URI']=='/chat/lib/Class_Count_Delete_Messages.php')
{
    header("Location: ../../index.php");
    exit();
  }


  //Закрываем страницу отправки
  if ($_SERVER['REQUEST_URI']=='/chat/lib/Class_Send_Messages.php')
{
    header("Location: ../../index.php");
    exit();
 }
  
  
//Перенаправим при попытке вызвать из браузера
if  ($_SERVER['REQUEST_URI'] == '/chat/conf/Class_Connect.php') 
{
    header("Location: ../index.php"); 
    exit();
    
}

?>
