Если не работает JavaScript, для можно использовать данный скрипт для чата. После 30 сообщений файл очищается.
<form  method="POST" action="chat2.php">
	Имя:<br/>
	<input type="text" id="name" name="name" size="100%"  maxlength="500"><br/>
	Сообщение:<br/>	 			
	<input type="text" id="text" name="text" size="100%"  maxlength="500"><br/>	
	<input  type="submit" name="submit" value="Send">
</form>

<?php 


//Обрежем запрос POST до 500 символов
$_POST['text']=mb_substr($_POST['text'], 0,500, 'UTF-8');
$_POST['name']=mb_substr($_POST['name'], 0,500, 'UTF-8');
$str2 = $_POST['name'] . '-> ' . $_POST['text'];
//Запишем сообщение в файл

if (isset($_POST['submit']) && !empty($_POST['text']) && $_POST['text'] !='') {
	$fd = fopen("chat.txt", 'a') or die("не удалось создать файл");
	fseek($fd, 0, SEEK_END);
	fwrite($fd, "\r\n");
	fwrite($fd, $str2);
	fclose($fd);
	print "<meta http-equiv=\"refresh\"        content=\"1\">";
}

//Читаем файл в массив text для подсчёта строк
$fd = fopen("chat.txt", 'r') or die("не удалось открыть файл");
while(!feof($fd))
{
	 $str = htmlentities(fgets($fd));
	 if ($str != "" && strlen($str) >  2) {
	 $text[] = $str;
 }
}
fclose($fd);
#print_r($text);

//Очистим файл, если сообщений больше 30
if (count($text) > 30)  {
	$f = fopen('chat.txt', 'w');
	fclose($f);
}

//Вывод сообщений
	$text=array_reverse($text);
	foreach ( $text as $value) 
	echo $value . '<br>';
?>
