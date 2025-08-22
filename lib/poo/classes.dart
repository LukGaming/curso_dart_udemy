class Pessoa {
  final String nome;
  final double peso;
  final int altura;
  final int idade;

  const Pessoa(this.nome, this.peso, this.altura, this.idade);
}

void main() {
  final objetoPessoa = Pessoa("Paulo Mendes", 72.5, 183, 27);

  print("Nome paulo: ${objetoPessoa.nome}");
}
