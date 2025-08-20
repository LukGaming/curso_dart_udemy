// Crie um programa que receba a idade de uma pessoa e imprima:

// "Criança" se a idade for menor que 12,

// "Adolescente" se estiver entre 12 e 17,

// "Adulto" se estiver entre 18 e 59,

// "Idoso" se for 60 ou mais.

void main() {
  int idade = 60;

  if (idade < 12) {
    print("Criança");
  } else if (idade >= 12 && idade <= 17) {
    print("Adolescente");
  } else if (idade >= 18 && idade <= 59) {
    print("Adulto");
  } else {
    print("Idoso");
  }

  switch (idade) {
    case < 12:
      print("Criança");
      break;
    case >= 12 && <= 17:
      print("Adolescente");
      break;
    case >= 18 && <= 59:
      print("Adulto");
      break;
    default:
      print("Idoso");
  }
}
