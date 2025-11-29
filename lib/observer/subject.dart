//Seja escutável

//Adicione escutadores

//Remova escutadores

//Notifique os escutadores
class Subject {
  bool wasDisposed = false;

  List<void Function()> _observers = [];

  void addObserver(void Function() observer) {
    _observers.add(observer);
  }

  void removeObserver(void Function() observer) {
    _observers.remove(observer);
  }

  void notifyObservers() {
    if (wasDisposed) {
      throw Exception("Subject was called after dispose");
    }
    for (final observer in _observers) {
      observer();
    }
  }

  void dispose() {
    _observers.clear();
    wasDisposed = true;
  }
}

void main() {
  final subject = Subject();

  subject.addObserver(observer1);

  subject.addObserver(observer2);

  subject.notifyObservers();

  subject.removeObserver(observer1);

  subject.notifyObservers();

  subject.dispose();

  subject.notifyObservers();
}

void observer1() {
  print("Observer 01 notificado!");
}

void observer2() {
  print("Observer 02 notificado");
}
