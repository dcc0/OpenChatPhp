//Если не работает JavaScript, для можно использовать данный скрипт для чата.
<form  method="POST" action="chat2.php"> 			
	<input type="text" id="text" name="text" size="100%"  maxlength="500"><br/>	
	<input  type="submit" name="submit" value="Send">
</form>
<?php

$str2 = $_POST['text'];
if (isset($_POST['submit']) && !empty($_POST['text']) && $_POST['text'] !='') {
	$fd = fopen("chat.txt", 'a') or die("не удалось создать файл");
	fseek($fd, 0, SEEK_END);
	fwrite($fd, "\r\n");
	fwrite($fd, $str2);
	fclose($fd);
}


$fd = fopen("chat.txt", 'r') or die("не удалось открыть файл");

while(!feof($fd))
{
	 $str = htmlentities(fgets($fd));
	 if ($str != "" && strlen($str) >  2)
	 $text[] = $str;
}
fclose($fd);
//print_r($text);

if (count($text) > 25)  {

	$f = fopen('chat.txt', 'w');
	fclose($f);
	$i=1;
	$fd = fopen("chat.txt", 'a') or die("не удалось создать файл");
	while($i != 24) 
{
	fseek($fd, 0, SEEK_END);
    	fwrite($fd, "\r\n");
    	fwrite($fd, $text[$i]);
        fwrite($fd, "\r\n");
    	$i++;
}
fclose($fd);
}

print "<meta http-equiv=\"refresh\"        content=\"[значение]\">";
$text=array_reverse($text);
foreach ( $text as $val)
echo $val . '<br>';
?>
