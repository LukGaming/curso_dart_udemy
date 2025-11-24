void main() {
  Stream<List<int>> list = Stream.fromIterable([
    [1, 2, 3],
    [4, 5, 6],
    [9, 8, 7],
  ]);

  list.expand((n) => n).map((e) => e * 2).listen(print);
}
