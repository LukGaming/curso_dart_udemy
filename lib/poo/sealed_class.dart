sealed class SealedClass {
  void metodoX();
}

class ClasseConcreta implements SealedClass {
  @override
  void metodoX() {
    // TODO: implement metodoX
  }
}

class ClasseConcreta2 implements SealedClass {
  @override
  void metodoX() {
    // TODO: implement metodoX
  }
}

void main() {
  SealedClass classeAbstrata = ClasseConcreta();

  switch (classeAbstrata) {
    case ClasseConcreta():
      print("Essa classe é ClasseConcreta");
      break;
    case ClasseConcreta2():
      print("Essa classe é ClasseConcret2");
      break;
  }
}
