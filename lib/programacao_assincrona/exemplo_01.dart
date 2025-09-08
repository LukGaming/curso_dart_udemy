void main() async {
  buscarUsuario()
      .then((usuario) {
        print("Usuário: $usuario");
      })
      .onError((error, stackStrack) {
        print(error);
      });

  print("Depois de buscar usuário");
}

Future<String> buscarUsuario() async {
  await Future.delayed(Duration(seconds: 2));
  throw Exception("Ocorreu um erro ao gerar usuário");
  return "Paulo Mendes";
}
