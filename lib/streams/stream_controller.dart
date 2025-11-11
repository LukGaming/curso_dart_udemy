import 'dart:async';

void main() async {
  final controller = StreamController<int>();

  controller.stream.listen(
    (event) {
      print("Event: $event");
    },
    onError: (error) {
      print("Error: $error");
    },
    onDone: () {
      print("Finalizando Stream");
    },
  );

  // for (int i = 0; i < 5; i++) {
  //   await Future.delayed(Duration(seconds: 1));
  //   controller.add(i);
  // }
  controller.addError(Exception("Erro ao gerar Stream"));

  await controller.close();

  final nomeController = StreamController<String>();

  final nome = "PAULO ANTÔNIO MENDES";

  String emittedStream = "";

  nomeController.stream.listen((event) {
    print(event);
  });

  for (int i = 0; i < nome.length; i++) {
    await Future.delayed(Duration(milliseconds: 200));
    emittedStream += nome[i];
    nomeController.add(emittedStream);
  }

  nomeController.close();
}


//P
//PA
//PAU
//PAUL
//PAULO