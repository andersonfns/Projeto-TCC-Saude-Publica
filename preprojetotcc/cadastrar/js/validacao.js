function logar(){

         var login = document.getElementById('nome').value;
         var senha = document.getElementById('senha').value;

         if(login == "nome" && senha == "teste"){
            alert('Login efetuado com sucesso');
            window.location.href = "paginainicial.html";
         
         }else{
            alert('Usuário ou senha incorretos');
         }
      }