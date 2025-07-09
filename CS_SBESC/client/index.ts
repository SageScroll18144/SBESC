const textoInput = document.getElementById("texto") as HTMLInputElement;
const seletor = document.getElementById("seletor") as HTMLSelectElement;
const btn1 = document.getElementById("btn1") as HTMLButtonElement;
const btn2 = document.getElementById("btn2") as HTMLButtonElement;
const btn3 = document.getElementById("btn3") as HTMLButtonElement;
const enviarBtn = document.getElementById("enviar") as HTMLButtonElement;
const resposta = document.getElementById("resposta") as HTMLParagraphElement;

const horarioInput = document.getElementById("horario") as HTMLInputElement;
const adicionarHorarioBtn = document.getElementById("adicionarHorario") as HTMLButtonElement;
const listaHorarios = document.getElementById("listaHorarios") as HTMLUListElement;

let horariosAdicionados: string[] = [];

function renderizarHorarios() {
  listaHorarios.innerHTML = "";

  horariosAdicionados.forEach((horario, index) => {
    const li = document.createElement("li");
    li.className = "horario-item";

    const span = document.createElement("span");
    span.textContent = horario;

    const btnRemover = document.createElement("button");
    btnRemover.textContent = "🗑️";
    btnRemover.title = "Remover horário";
    btnRemover.onclick = () => {
      horariosAdicionados.splice(index, 1);
      renderizarHorarios();
    };

    li.appendChild(span);
    li.appendChild(btnRemover);
    listaHorarios.appendChild(li);
  });
}

adicionarHorarioBtn.addEventListener("click", () => {
  const horario = horarioInput.value;
  if (horario && !horariosAdicionados.includes(horario)) {
    horariosAdicionados.push(horario);
    renderizarHorarios();
    horarioInput.value = "";
  }
});

let selectedValue: number | null = null;

function selecionarBotao(botao: HTMLButtonElement, valor: number) {
  selectedValue = valor;
  [btn1, btn2, btn3].forEach(btn => btn.classList.remove("selected"));
  botao.classList.add("selected");
}

btn1.addEventListener("click", () => selecionarBotao(btn1, 1));
btn2.addEventListener("click", () => selecionarBotao(btn2, 2));
btn3.addEventListener("click", () => selecionarBotao(btn3, 3));

enviarBtn.addEventListener("click", () => {
  const dados = {
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
    .then(res => res.text())
    .then(data => {
      resposta.textContent = "Resposta do servidor: " + data;
    })
    .catch(err => {
      resposta.textContent = "Erro ao enviar dados: " + err.message;
    });
});
