void main()async {
  Stream<int> stream = Stream.fromIterable([1,2,3,5,10,15]);


  stream.listen((valor){
    print("valor emitido: $valor");
  }).onDone((){
    print("Finalizando Stream");
  });

  final timer = Stream.periodic(Duration(milliseconds: 200), (count) {
    if(count == 4){
      throw Exception("Erro ao transmitir stream");
    }
    return count + 1;
  },).take(5);

  timer.listen((event) {
    print("Event: $event");
  },).onError((e){
    print("Error: $e");
  });

  
  
}