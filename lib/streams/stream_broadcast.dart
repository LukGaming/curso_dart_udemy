//TemperatureSensor

//Emita periodicamente pra gente a temperature a cada 1s.

//Sempre mostre a temperature

//Caso a temperatura for maior que 30 graus, nós criaremos um alerta.

import 'dart:async';
import 'dart:math';

class TemperatureSensor {
  StreamController<double> _controller = StreamController<double>.broadcast();

  Timer? _timer;

  final _random = Random();

  Stream<double> get stream => _controller.stream;

  Future<void> start() async {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      final temperature = 20 + (_random.nextDouble() * 15);

      _controller.add(temperature);
    });
  }

  Future<void> finish() async {
    _timer?.cancel();
    await _controller.close();
  }
}

void main() async {
  final temperatureSensor = TemperatureSensor();

  temperatureSensor.stream.listen(
    (event) {
      print("Temperatura: ${event.toStringAsFixed(1)} C");
    },
    onDone: () {
      print("Evento 1 finalizado!");
    },
  );

  temperatureSensor.stream.listen(
    (event) {
      if (event > 30) {
        print("Alerta temperatura alta!: ${event.toStringAsFixed(1)} C");
      }
    },
    onDone: () {
      print("Evento 2 finalizado!");
    },
  );

  temperatureSensor.start();

  await Future.delayed(Duration(seconds: 5));

  await temperatureSensor.finish();
}
