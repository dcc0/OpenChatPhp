<script>
	// Кроссбраузерное создание объекта дл запроса . Обновление чата
	function getXmlHttp() {
		var xmlhttp;
		try {
			xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
		} catch(e) {
			try {
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			} catch(E) {
				xmlhttp = false;
			}
		}
		if(!xmlhttp && typeof XMLHttpRequest != 'undefined') {
			xmlhttp = new XMLHttpRequest();
		}
		return xmlhttp;
	}
	// После каждого (time) интервала функция обновляет div#updatebox
function update() {
	var xmlhttp = getXmlHttp()
		//Проверим первоначальный ввывод. Если не определено, то номер сообщения равен 0
	if(typeof last_message_id == 'undefined') {
		last_message_id = 0;
	}
	//Из какого канала, если не установлен, то в chat
	var channel = document.getElementById('channel').value;
	//Проверим равно ли значение канала значению при предыдущей загрузке
	//Если канал изменился, то сбросим номер сообщения до 0
	if(window.channel_for_id_1 != channel) last_message_id = 0;
	//Запрос (с выводом только последних)
	xmlhttp.open('GET', "/chat/lib/view/Class_Printing.php?last_message_id=" + last_message_id + "&channel=" + channel, true);
	xmlhttp.onreadystatechange = function() {
		if(xmlhttp.readyState == 4) {
			if(xmlhttp.status == 200) {
				//Получение JSON
				var myprint = '';
				var mydata = xmlhttp.responseText;
				mydata = JSON.parse(mydata);
				//Для клонирования и цикла
				var i;
				var itm;
				var cln;
				//alert(mydata[mydata]);
				//Проверим массив/Check the array
				if(mydata) {
				//Номер последнего сообщения/Number of last message
					if (mydata[mydata.length - 1] !== undefined) {
					window.last_message_id = mydata[mydata.length - 1].id;
					}
					//span для клонирования имени и текста сообщения
					var span_sender;
					var span_text;
					//Для замены ссылок/картинок
					var replace_link = /([^\"=]{2}|^)((https?|ftp):\/\/\S+[^\s.,> )\];'\"!?])/;
					var replace_images = /([^\"=]{2}|^)((http|https)\:\/\/.*\.(gif|png|jpg|bmp|tif|tiff))/;
					//Разрешает некоторые теги
					var replace_bold_text = /([a-z]{1,7})(-&gt;)(.*)/;
					//Замена цвета в ООП стиле
					var replace_font_text = /(color)(-&gt;)([a-z]{1,7})(-&gt;)(.*)/;
					//Частный alert
					var private_to = /(alert)(-&gt;)([a-zA-Z0-9а-яёА-Я-ё\-\_\ ]{1,100})(-&gt;)(.*)/
					var private_login = document.getElementById('userlogin').value;
					var thlogin;
					var subst;
					var withlink;
					//Собираем то, что будет напечатано
					for(i = 0; i < mydata.length; i++) {
						//Переменная с текстом
						withlink = mydata[i].text;
						//Разрешает некоторые теги
						if(mydata[i].text.search(replace_bold_text) == '0') {
							subst = '<$1>$1$2$3</$1>';
							withlink = mydata[i].text.replace(replace_bold_text, subst);
						}
						//Замена цвета
						if(mydata[i].text.search(replace_font_text) == '0') {
							subst = '<font color=$3>$1$2$3$4$5</font>';
							withlink = mydata[i].text.replace(replace_font_text, subst);
						}
						//Cообщения через alert
						//Если для пользователя
						if(mydata[i].text.search(private_to) == '0') {
							thlogin = mydata[i].text.replace(private_to, '$3');
							//Если логин совпал с адресатом
							if(thlogin == private_login) {
								alert('Сообщения для ' + private_login);
								alert(mydata[i].text.replace(private_to, '$5'));
								private_to = '1';
								withlink = '0';
							} else {
								//Сотрем, чтобы не показывать другим
								withlink = '0';
							}
						}
						//Показываем картинки
						if(mydata[i].text.search(replace_images) == '0') {
							subst = '<a href="$2"><img src="$2" width="30%"></a>';
							withlink = mydata[i].text.replace(replace_images, subst);
						}
						//Показываем Ссылки
						if(mydata[i].text.search(replace_link) == '0' && mydata[i].text.search(replace_images) != '0') {
							subst = '<a href="$2" target="_blank">$2</a>';
							withlink = mydata[i].text.replace(replace_link, subst);
						}
						if(withlink != '0') {
							//clone = itm.cloneNode(true); //Клонируем
							itm = document.getElementById("parent"); //Получаем id div-a
							span_sender = document.createElement("span"); //Создадим span для отправителя
							span_sender.setAttribute("class", "sender"); //Установим ему атрибут class для смены стиля
							span_text = document.createElement("span"); //Создадим span для текста
							span_sender.innerHTML = mydata[i].login + ' - > '; //Добавим в sender имя
							span_text.innerHTML = withlink + '<br/>'; //Добавим текст и перенос строки
							itm.appendChild(span_sender); //Добавим span_sender к div
							itm.appendChild(span_text); //Добавим text к div
						}
					}
					//Прижать scroll
					document.getElementById('updatebox').scrollTop = 9999999;
					window.channel_for_id_1 = channel;
				}
			}
		}
	};
	xmlhttp.send(null);
}
//Каждые 30 минут обновим окно
window.setInterval('refresh()', 1800000000); // Call a function every 1800000000 milliseconds (OR 30 mins).
// Refresh or reload page.
function refresh() {
	window.location.reload();
}
// Таймер
var time = 3000;
setInterval("update()", time);
</script>
