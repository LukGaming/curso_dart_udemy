void main() {
  double notaDeCorte = 60;
  double notaMaxima = 100;
  double notaAluno = 55;

  if (notaAluno >= notaDeCorte) {
    print("Passou!");
  } else {
    print("Não passou!");
  }

  if (notaAluno == notaMaxima) {
    print("Alcançou nota máxima");
  }

  String statusPedido = "unkown"; //pendente, producao, finalizado

  if (statusPedido == "pendente") {
    print("O pedido está pendente");
  } else if (statusPedido == "producao") {
    print("O pedido está em produção");
  } else if (statusPedido == "finalizado") {
    print("O pedido foi finalizado");
  } else {
    print("Status desconhecido");
  }

  int idade = 17;
  String sexo = "Feminino";

  if (idade >= 18 && sexo == "Masculino") {
    print("Apto a listar");
  } else {
    print("Não está apto a se alistar");
  }
}
