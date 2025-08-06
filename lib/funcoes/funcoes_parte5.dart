void main() {
  List<void Function()> callbacks = [];
  callbacks.add(animarBotao);
  callbacks.add(trocarBotaoDeCor);
  callbacks.add(() {
    print("Finalizando press button");
  });

  onPressed(callbacks);
}

void onPressed(List<void Function()> callbacks) {
  for (int i = 0; i < callbacks.length; i++) {
    callbacks[i]();
  }
}

void animarBotao() {
  print("Animando botão...");
}

void trocarBotaoDeCor() {
  print("Trocando botão de cor...");
}
