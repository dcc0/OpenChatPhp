<script>

		//Отправка сообщения по нажатию Enter
		
		    function loadDoc2() {

		        
		    var xhttp = new XMLHttpRequest();
		    var param = document.getElementById("text").value; // Считываем значение текста
		    var param2 =document.getElementById("userlogin").value; // Считываем значение имени
		    var param3 =document.getElementById("channel").value; // Считываем значение канала
            var param4 =document.getElementById("pass").value; // Считываем значение канала
	           
		    
		        xhttp.open('GET', "./lib/Class_Send_Messages.php?text="+encodeURIComponent(param)+"&userlogin="+encodeURIComponent(param2)+"&channel="+encodeURIComponent(param3)+"&pass="+encodeURIComponent(param4), true);
		        xhttp.send();
		      document.getElementById('text').value = "";
		      				
				//scroll прижать-таки
		      		document.getElementById('updatebox').scrollTop = 9999999;
		    }
		
		      function checkKey(e) {
		    var inp = document.getElementById('text');
		    var inp2 = document.getElementById('userlogin');
		        if(e.keyCode == "13") {
		        loadDoc2();
				
		        }
		
		      }
		
</script>
		
		
