mixin Corredor {
  void correr() => print("Correr");
}

mixin Nadador {
  void nadar() => print("Nadando");
}

mixin Ciclista {
  void pedalar() => print("Pedalando");
}

mixin Logging {
  void log(String message) {
    print("Log: $message");
  }
}

class Atleta with Corredor, Ciclista, Nadador, Logging {
  void praticarAtividadeFisica() {
    pedalar();
    correr();
    log("Praticando atividade física");
  }
}

void main() {
  final atleta = Atleta();

  atleta.correr();
  atleta.pedalar();
  atleta.praticarAtividadeFisica();
  atleta.nadar();
}
