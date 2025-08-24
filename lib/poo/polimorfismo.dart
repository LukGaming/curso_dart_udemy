class Animal {
  void emitirSom() {
    print("Som genérico");
  }
}

class Cachorro extends Animal {
  @override
  void emitirSom() {
    print("Au au");
  }
}

class Gato extends Animal {
  @override
  void emitirSom() {
    print("Miau");
  }
}

class Vaca extends Animal {
  @override
  void emitirSom() {
    print("MUUUU!");
    super.emitirSom();
  }
}

void main() {
  final Animal animalGenerico = Animal();
  animalGenerico.emitirSom();

  List<Animal> animais = [Cachorro(), Gato(), Vaca()];

  animais.forEach((animal) {
    animal.emitirSom();
  });
}
