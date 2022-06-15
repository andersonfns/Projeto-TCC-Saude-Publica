function logar(){

         var login = document.getElementById('login').value;
         var senha = document.getElementById('senha').value;

         if(login == "teste" && senha == "teste"){
            alert('Login efetuado com sucesso');
            window.location.href = "home.html";
         
         }else{
            alert('Usuário ou senha incorretos');
         }

        }