void main() {
  String statusPedido = "desconhecido";

  switch (statusPedido) {
    case "pendente":
      print("Pedido pendente");
      break;
    case "producao":
      print("Pedido em produção");
      break;
    case "finalizado":
      print("Pedido finalizado");
      break;
    default:
      print("Status desconhecido");
  }

  int numero = 1; //1,2,3

  switch (numero) {
    case >= 10:
      print("Numero maior que 10");
      break;
    case < 10:
      print("Numero menor que 10");
      break;
  }
}
