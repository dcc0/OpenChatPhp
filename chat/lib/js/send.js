//Отправка сообщения по нажатию Enter
function loadDoc2() {
// Считываем значение текста, имени, канала, пароля
    let xhttp = new XMLHttpRequest(), param = document.getElementById("text").value,
        param2 = document.getElementById("userlogin").value,
        param3 = document.getElementById("channel").value,
        param4 = document.getElementById("pass").value;

    xhttp.open('GET', "./lib/Class_Send_Messages.php?text=" + encodeURIComponent(param) + "&userlogin=" + encodeURIComponent(param2) + "&channel=" + encodeURIComponent(param3) + "&pass=" + encodeURIComponent(param4), true);
    xhttp.send();
    document.getElementById('text').value = "";

    //scroll прижать-таки
    document.getElementById('updatebox').scrollTop = 9999999;
}

function checkKey(e) {
    var inp = document.getElementById('text'), inp2 = document.getElementById('userlogin');
    if (e.keyCode === "13") {
        loadDoc2();
    }
}