void main() {
  String nomeCompleto = "Paulo Antônio Ferreira Mendes Macêdo";

  print("Nome Completo: $nomeCompleto");

  String nomeCachorro = 'Krypto';

  print("Nome do Cachorro: $nomeCachorro");

  int idade = 37;

  int altura = 183;

  double peso = 72.5;

  String informacoesCompletas =
      ''' 
  
  Nome: $nomeCompleto
  Idade: $idade
  Altura: $altura
  peso: ${peso.toInt()}
  
  ''';

  print("informacoesCompletas: $informacoesCompletas");
}
