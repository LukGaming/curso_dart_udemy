void main() {
  double peso = 72.5;

  print("Peso: $peso");

  double precoNotebook = 3999.99;

  print("Preço notebook: ${precoNotebook.toStringAsPrecision(2)}");

  double saldo = 5000.00;

  double saldoPosCompra = saldo - precoNotebook;

  print("SaldoAtual: $saldoPosCompra");
}
