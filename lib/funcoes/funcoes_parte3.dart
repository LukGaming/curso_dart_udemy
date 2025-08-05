import 'package:curso_dart_udemy/funcoes/funcao_privada.dart';
import 'package:curso_dart_udemy/funcoes/funcoes_parte2.dart';

void main() {
  final nomeCompleto = criarNomeCompleto("Paulo", "Mendes");

  print("Nome completo: $nomeCompleto");

  funcaoGlobal();

  () {
    print("Função anonima");
  }.call();

  funcaoPublica();
}

void funcaoGlobal() {
  void funcaoEscopoPrivado() {
    print("Hello world");
  }

  funcaoEscopoPrivado();
}
