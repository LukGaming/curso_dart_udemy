String criarNomeCompleto(String nome, String sobrenome) {
  return "$nome $sobrenome";
}

String informacoesUsuario({
  required String nomeCompleto,
  int? idade,
  required int altura,
  double peso = 70,
}) {
  return "Nome: $nomeCompleto, idade: $idade, altura: $altura, peso: $peso";
}

void main() {
  final nome = "Paulo";
  final sobrenome = "Mendes";

  final nomeCompleto = criarNomeCompleto(nome, sobrenome);

  print("nomeCompleto: $nomeCompleto");

  final getInformacoesUsuario = informacoesUsuario(
    nomeCompleto: nomeCompleto,
    altura: 183,
    idade: 27,
    peso: 72,
  );

  print("Informações usuário: $getInformacoesUsuario");
}
