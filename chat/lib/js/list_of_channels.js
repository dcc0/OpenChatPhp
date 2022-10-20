<script type = "text/javascript" >
function getText_author(str) {
	document.getElementById('channel').value = str.firstChild.data;
}
var DATA;

function getFile(fileName) {
	var request = new XMLHttpRequest();
	request.open('GET', fileName);
	request.onloadend = function() {
		parse(request.responseText);
	}
	request.send();
}
getFile('/chat/lib/view/json_list_of_channels.php'); //путь к файлу
function parse(obj) {
	var i, new_item, clone_new_href, span_tilda;
	var canals_lis;
	DATA = JSON.parse(obj);
	for(i = 0; i < DATA.length; i++) {
		//Клонирование стиля и ссылки для канала
		canals_lis = document.getElementById("canals_list"); //получаем div
		new_item = document.getElementById("channel_l"); //получем каркас ссылки
		clone_new_href = new_item.cloneNode(true); //клонируем каркас ссылки
		clone_new_href.innerHTML = DATA[i]; //вставляем данные в каркас ссылки
		canals_lis.appendChild(clone_new_href); //Добавим  к div
		span_tilda = document.createElement("span"); //Добавим тильда
		span_tilda.innerHTML = ' ~ ';
		canals_lis.appendChild(span_tilda);
	}
}
</script>
