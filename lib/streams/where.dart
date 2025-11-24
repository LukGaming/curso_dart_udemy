void main() {
  Stream<int> numbers = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  numbers.where((n) => n.isEven).listen(print);
}
