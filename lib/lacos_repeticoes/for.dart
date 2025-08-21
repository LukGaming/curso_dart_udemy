void main() {
  for (int i = 10; i >= 0; i--) {
    print(i);
  }

  List<int> numeros = [10, 20, 30, 40];

  for (int i = 0; i < numeros.length; i++) {
    print("Interação: $i, Valor do número: ${numeros[i]}");
  }

  List<String> nomes = ["Paulo", "João", "Maria"];

  for (String nome in nomes) {
    print("Nome: $nome");
  }

  nomes.forEach((nome) {
    print("Nome: $nome");
  });

  final novosNomes = nomes.map((nome) => "Nome: $nome").toList();

  print(novosNomes);

  for (String nome in novosNomes) {
    print(nome);
  }
}
