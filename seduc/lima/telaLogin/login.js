const formLogin = document.getElementById("formLogin");

formLogin.addEventListener("submit", function (event){
    event.preventDefault(); //resentando as funções padrões do navegador

    const usuario = document.getElementById("usuario").value.trim()
    const senha = document.getElementById("senha").value;
    const mensagemErro = document.getElementById("mensagemErro");

    if( usuario === "totatola" && senha === "Olhaotraizin!" ) {
        window.location.href = "sucess.html";
    } else {
        window.location.href= "falhou.html"
    }
})