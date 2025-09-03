extension IntExtension on int {
  int quadrado() {
    return this * this;
  }

  bool ehPar() {
    return this % 2 == 0;
  }

  bool ehImpar() {
    return !ehPar();
  }
}

extension DateExtension on DateTime {
  String paraDataBrasileira() {
    final dia = day.toString().padLeft(2, "0");
    final mes = month.toString().padLeft(2, "0");
    final ano = year;

    return "$dia/$mes/$ano";
  }

  String paraHoraBrasileira() {
    final hora = hour.toString().padLeft(2, "0");
    final minutos = minute.toString().padLeft(2, "0");
    return "$hora:$minutos";
  }

  String dataEHoraFormatadas() {
    return "${paraDataBrasileira()} às ${paraHoraBrasileira()}";
  }
}

void main() {
  final numero = 4;

  print(numero.quadrado());

  print("Par: ${numero.ehPar()}");

  print("Impar: ${numero.ehImpar()}");

  final dataAtual = DateTime.now();

  print(dataAtual.paraDataBrasileira());

  print(dataAtual.paraHoraBrasileira());

  final dataEHoraAtual = dataAtual.dataEHoraFormatadas();

  print(dataEHoraAtual);
}
