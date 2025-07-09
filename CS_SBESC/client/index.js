var textoInput = document.getElementById("texto");
var seletor = document.getElementById("seletor");
var btn1 = document.getElementById("btn1");
var btn2 = document.getElementById("btn2");
var btn3 = document.getElementById("btn3");
var enviarBtn = document.getElementById("enviar");
var resposta = document.getElementById("resposta");
var horarioInput = document.getElementById("horario");
var adicionarHorarioBtn = document.getElementById("adicionarHorario");
var listaHorarios = document.getElementById("listaHorarios");
var horariosAdicionados = [];
function renderizarHorarios() {
    listaHorarios.innerHTML = "";
    horariosAdicionados.forEach(function (horario, index) {
        var li = document.createElement("li");
        li.className = "horario-item";
        var span = document.createElement("span");
        span.textContent = horario;
        var btnRemover = document.createElement("button");
        btnRemover.textContent = "🗑️";
        btnRemover.title = "Remover horário";
        btnRemover.onclick = function () {
            horariosAdicionados.splice(index, 1);
            renderizarHorarios();
        };
        li.appendChild(span);
        li.appendChild(btnRemover);
        listaHorarios.appendChild(li);
    });
}
adicionarHorarioBtn.addEventListener("click", function () {
    var horario = horarioInput.value;
    if (horario && !horariosAdicionados.includes(horario)) {
        horariosAdicionados.push(horario);
        renderizarHorarios();
        horarioInput.value = "";
    }
});
var selectedValue = null;
function selecionarBotao(botao, valor) {
    selectedValue = valor;
    [btn1, btn2, btn3].forEach(function (btn) { return btn.classList.remove("selected"); });
    botao.classList.add("selected");
}
btn1.addEventListener("click", function () { return selecionarBotao(btn1, 1); });
btn2.addEventListener("click", function () { return selecionarBotao(btn2, 2); });
btn3.addEventListener("click", function () { return selecionarBotao(btn3, 3); });
enviarBtn.addEventListener("click", function () {
    var dados = {
        paciente: textoInput.value,
        classe: seletor.value,
        valor: selectedValue,
        horarios: horariosAdicionados
    };
    fetch("http://localhost:3000/enviar", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(dados)
    })
        .then(function (res) { return res.text(); })
        .then(function (data) {
        resposta.textContent = "Resposta do servidor: " + data;
    })
        .catch(function (err) {
        resposta.textContent = "Erro ao enviar dados: " + err.message;
    });
});
