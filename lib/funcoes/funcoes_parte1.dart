int somar(int numero1, int numero2) {
  return numero1 + numero2;
}

double dividir(int numero1, int numero2) {
  return numero1 / numero2;
}

int multiplicar(int numero1, int numero2) {
  return numero1 * numero2;
}

void main() {
  print("Valor da soma: ${somar(5, 2)}");

  print("Valor da soma: ${somar(1354, 3654)}");

  print("Valor da divisão: ${dividir(49, 7)}");

  print("Valor da multiplicação: ${multiplicar(7, 7)}");
}
