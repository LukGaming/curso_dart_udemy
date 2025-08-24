class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void apresentar() {
    print("Me chamo $nome e possuo $idade anos de idade");
  }
}

class Aluno extends Pessoa {
  String curso;
  Aluno(super.nome, super.idade, this.curso);

  @override
  void apresentar() {
    print("Me chamo $nome, tenho $idade anos de idade e estou cursando $curso");
  }
}

class Professor extends Pessoa {
  String disciplina;
  Professor(super.nome, super.idade, this.disciplina);

  @override
  void apresentar() {
    print(
      "Olá, me chamo $nome, possuo $idade anos de idade e lecioso $disciplina",
    );
  }
}

void main() {
  final pessoa = Pessoa("Paulo Mendes", 27);

  pessoa.apresentar();

  final aluno = Aluno("Paulo Mendes", 27, "Ciências da computação");

  aluno.apresentar();

  final professor = Professor("Paulo Mendes", 27, "Ciências da computação");

  professor.apresentar();
}
