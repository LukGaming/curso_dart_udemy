class Calculadora {
  double somar(double num1, double num2) {
    return num1 + num2;
  }

  double subtrair(double num1, double num2) {
    return num1 - num2;
  }

  double multiplicar(double num1, double num2) {
    return num1 * num2;
  }

  double dividir(double num1, double num2) {
    return num1 / num2;
  }
}

void main() {
  final calculadora = Calculadora();

  final soma = calculadora.somar(15, 25.7);

  print("Soma: $soma");

  final substracao = calculadora.subtrair(627, 315.5);

  print("Subtração: $substracao");

  final multiplicacao = calculadora.multiplicar(30, 497.25);

  print("multiplicacao: $multiplicacao");

  final divisao = calculadora.dividir(49, 7);

  print("Divisão: $divisao");
}
