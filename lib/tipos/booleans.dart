void main() {
  bool temCafe = false;

  print("Tem café: $temCafe");

  int idade = 17;

  bool maiorIdade = idade >= 18;

  print("Maior idade: $maiorIdade");

  int notaMinima = 60;

  int notaAluno = 65;

  bool alunoAprovado = notaAluno > notaMinima;

  if (alunoAprovado) {
    print("Aluno aprovado!");
  } else {
    print("Aluno reprovado");
  }

  String sexo = "M";

  int idadeAtual = 17;

  bool sexoValido = sexo == "M";

  bool pessoaMaiorIdade = idadeAtual >= 18;

  bool aptoExercito = sexoValido && pessoaMaiorIdade;

  if (aptoExercito) {
    print("Pessoa apta a entrar no serviço militar obrigatório.");
  } else {
    print("Pessoa não está apta a entrar no serviço militar obrigatório.");
  }
}
