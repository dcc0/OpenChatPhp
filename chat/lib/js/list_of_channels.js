function getText_author(str) {
    document.getElementById('channel').value = str.firstChild.data;
}

function getFile(fileName) {
    let request = new XMLHttpRequest();
    request.open('GET', fileName);
    request.onloadend = function () {
        parse(request.responseText);
    }
    request.send();
}

getFile('/chat/lib/view/json_list_of_channels.php'); //путь к файлу

function parse(obj) {

    let DATA = JSON.parse(obj);
    for (let i = 0; i < DATA.length; i++) {

        //Клонирование стиля и ссылки для канала
        let canals_lis = document.getElementById("canals_list"); //получаем div
        let new_item = document.getElementById("channel_l"); //получем каркас ссылки
        let clone_new_href = new_item.cloneNode(true); //клонируем каркас ссылки
        clone_new_href.innerHTML = DATA[i]; //вставляем данные в каркас ссылки
        canals_lis.appendChild(clone_new_href);   //Добавим  к div

        let span_tilda = document.createElement("span"); //Добавим тильда
        span_tilda.innerHTML = ' ~ ';
        canals_lis.appendChild(span_tilda);
    }
}