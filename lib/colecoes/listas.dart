void main() {
  bool primeiraBool = true;
  bool segundaBool = false;

  List<bool> booleanList = [true, false, primeiraBool, segundaBool];

  List<double> doubleList = [1.70, 2.0];

  print("Tamanho da lista double: ${doubleList.length}");

  print("Tamanho da lista boolean: ${booleanList.length}");

  List<int> intList = [1];

  print("Lista Vazia: ${intList.isEmpty}");

  List<String> nomes = [];

  nomes.add("Paulo");

  nomes.add("João");

  print("Nomes: $nomes");

  nomes.forEach((nome) => print(nome));

  nomes.remove("Removendo nome não existente");

  print("Nomes: $nomes");
}
