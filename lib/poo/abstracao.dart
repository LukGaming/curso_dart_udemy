abstract class Pagamento {
  void processarPagamento();
  void solicitarEstorno();
}

class Pix implements Pagamento {
  @override
  void processarPagamento() {
    print("Processando pagamento com o PIX!");
  }

  @override
  void solicitarEstorno() {
    print("Solicitando estorno do Pix!");
  }
}

class CartaoDeCredito implements Pagamento {
  @override
  void processarPagamento() {
    print("Processando pagamento com cartão de crédito");
  }

  @override
  void solicitarEstorno() {
    print("Solicitando estorno com cartão de crédito!");
  }
}

void main() {
  Pagamento pagamento = Pix();

  pagamento.processarPagamento();

  pagamento.solicitarEstorno();
}
