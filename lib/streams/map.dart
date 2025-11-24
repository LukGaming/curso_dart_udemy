void main() {
  Stream<int> numbers = Stream.fromIterable([1, 2, 3, 4, 5]);

  numbers.map((n) => n * 2).listen(print);
}
