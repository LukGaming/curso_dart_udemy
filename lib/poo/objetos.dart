class Veiculo {
  String fabricante;
  String nome;
  String placa;
  int ano;
  int rodas;
  double km;
  Veiculo(
    this.fabricante,
    this.nome,
    this.placa,
    this.ano,
    this.rodas,
    this.km,
  );
}

void main() {
  final sandero = Veiculo('Renault', "Sandero", "EHRA23", 2014, 4, 87.0);

  print(sandero.toString());

  print("Fabricante: ${sandero.fabricante}");
  print("Fabricante: ${sandero.nome}");
  print("Fabricante: ${sandero.placa}");
}
