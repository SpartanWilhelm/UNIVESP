function perguntaEndereco(){ 
    do{
        endereco = prompt("Insira o seu endereço:");
        confirma = confirm("Seu endereço é: " + endereco); 
    } 
    while(!confirma); 
        alert("A página será alterada..."); 
        document.write("Seu endereço é "+endereco+".");
    }
    