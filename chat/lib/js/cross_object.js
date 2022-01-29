// Кроссбраузерное создание объекта дл запроса . Обновление чата

function getXmlHttp() {
    let xmlhttp;
    try {
        xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
        try {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        } catch (E) {
            xmlhttp = false;
        }
    }
    if (!xmlhttp && typeof XMLHttpRequest != 'undefined') {
        xmlhttp = new XMLHttpRequest();
    }
    return xmlhttp;
}

// После каждого (time) интервала функция обновляет div#updatebox
function update() {
    //Проверим первоначальный ввывод. Если не определено, то номер сообщения равен 0
    let xmlhttp = getXmlHttp(), last_message_id;
    if (typeof last_message_id == 'undefined') {
        last_message_id = 0;
    }

    //Из какого канала, если не установлен, то в chat
    let channel = document.getElementById('channel').value;
    //Проверим равно ли значение канала значению при предыдущей загрузке //Если канал изменился, то сбросим номер сообщения до 0
    if (window.channel_for_id_1 !== channel)
        last_message_id = 0;

    //Запрос (с выводом только последних)
    xmlhttp.open('GET', "/chat/lib/view/printing.php?last_message_id=" + last_message_id + "&channel=" + channel, true);

    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {

            //Получение JSON
            let mydata = xmlhttp.responseText;
            mydata = JSON.parse(mydata);

            if (mydata) {
                //Номер последнего сообщения/Number of last message
                window.last_message_id = mydata[mydata.length - 1].id;

                //Для замены ссылок/картинок
                const replace_link = /([^"=]{2}|^)((https?|ftp):\/\/\S+[^\s.,>)\];'"!?])/;
                const replace_images = /([^"=]{2}|^)((http|https):\/\/.*\.(gif|png|jpg|bmp|tif|tiff))/;
                //Разрешает некоторые теги
                //Замена цвета в ООП стиле
                //Частный alert
                let replace_bold_text = /([a-z]{1,7})(-&gt;)(.*)/,
                    replace_font_text = /(color)(-&gt;)([a-z]{1,7})(-&gt;)(.*)/,
                    private_to = /(alert)(-&gt;)([a-zA-Z0-9А-я_ ]{1,100})(-&gt;)(.*)/,
                    private_login = document.getElementById('userlogin').value, thlogin, subst, withlink;

                //Собираем то, что будет напечатано

                for (
                    //Для клонирования и цикла
                    let i = 0; i < mydata.length; i++) {

                    //Переменная с текстом
                    withlink = mydata[i].text;

                    //Разрешает некоторые теги
                    if (mydata[i].text.search(replace_bold_text) === '0') {
                        subst = '<$1>$1$2$3</$1>';
                        withlink = mydata[i].text.replace(replace_bold_text, subst);
                    }

                    //Замена цвета
                    if (mydata[i].text.search(replace_font_text) === '0') {
                        subst = '<span style="color: $3">$1$2$3$4$5</span>';
                        withlink = mydata[i].text.replace(replace_font_text, subst);
                    }

                    //Cообщения через alert

                    //Если для пользователя
                    if (mydata[i].text.search(private_to) === '0') {
                        thlogin = mydata[i].text.replace(private_to, '$3');
                        //Если логин совпал с адресатом
                        if (thlogin === private_login) {
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
                    if (mydata[i].text.search(replace_images) === '0') {
                        subst = '<a href="$2"><img src="$2" width="30%" alt=""></a>';
                        withlink = mydata[i].text.replace(replace_images, subst);
                    }

                    //Показываем Ссылки
                    if (mydata[i].text.search(replace_link) === '0' && mydata[i].text.search(replace_images) !== '0') {
                        subst = '<a href="$2" target="_blank">$2</a>';
                        withlink = mydata[i].text.replace(replace_link, subst);
                    }

                    if (withlink !== '0') {
                        //clone = itm.cloneNode(true); //Клонируем
                        let itm = document.getElementById("parent"); //Получаем id div-a

                        //span для клонирования имени и текста сообщения
                        let span_sender = document.createElement("span"); //Создадим span для отправителя
                        span_sender.setAttribute("class", "sender"); //Установим ему атрибут class для смены стиля
                        let span_text = document.createElement("span");  //Создадим span для текста
                        span_sender.innerHTML = mydata[i].login + ' - > ';    //Добавим в sender имя
                        span_text.innerHTML = withlink + '<br/>'; //Добавим текст и перенос строки
                        itm.appendChild(span_sender);   //Добавим span_sender к div
                        itm.appendChild(span_text); //Добавим text к div
                    }
                }
                //Прижать scroll
                document.getElementById('updatebox').scrollTop = 9999999;
                window.channel_for_id_1 = channel;
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
let time = 3000;
setInterval("update()", time);