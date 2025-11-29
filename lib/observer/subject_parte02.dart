void main() {
  final counter = Counter();

  counter.addObserver((value) {
    print("Count: $value");
  });

  counter.increment();
  counter.decrement();

  counter.dispose();
}

class Counter extends IntSubject {
  int count = 0;

  void increment() {
    count++;
    notifyObservers(count);
  }

  void decrement() {
    count++;
    notifyObservers(count);
  }
}

class IntSubject {
  bool wasDisposed = false;

  List<void Function(int value)> _observers = [];

  void addObserver(void Function(int value) observer) {
    _observers.add(observer);
  }

  void removeObserver(void Function(int value) observer) {
    _observers.remove(observer);
  }

  void notifyObservers(int value) {
    if (wasDisposed) {
      throw Exception("IntSubject notifyObservers called after dispose");
    }
    for (final observer in _observers) {
      observer(value);
    }
  }

  void dispose() {
    _observers.clear();
    wasDisposed = true;
  }
}
