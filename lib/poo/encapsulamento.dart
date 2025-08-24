class ContaBancaria {
  double _saldo;
  double get saldo => _saldo;

  ContaBancaria(this._saldo);

  void mostrarSaldo() {
    print('saldo: R\$$_saldo');
  }

  void depositar(double valor) {
    _saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= 0) {
      print("Não foi possível efetuar o saque");
      return;
    }
    if (valor > _saldo) {
      print("Saldo insuficiente");
      return;
    }
    _saldo -= valor;
  }
}

void main() {
  final conta = ContaBancaria(0);

  conta.mostrarSaldo();

  conta.depositar(300);

  conta.mostrarSaldo();

  conta.sacar(400);

  conta.mostrarSaldo();

  conta.sacar(301);

  conta.mostrarSaldo();
}
