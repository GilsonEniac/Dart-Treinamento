main() async {
//metodos

  var stream = Stream<dynamic>.periodic(Duration(seconds: 1), (e) => e + 1).take(5).asBroadcastStream();

  stream = stream.takeWhile((e) => e <= 5).skipWhile((e) => e > 3).take(3).map((e) => e.toString().padLeft(2, '0'));

//Ouvintes
  stream.listen((onData) {
    print('Listem: $onData');
  }, onDone: () {
    print('Contagem finalizada !!');
  });

  //stream.forEach((e) {
  //  print('ForEach: $e');
  //});

  //await for (dynamic evento in stream) {
  //  print('ForIN : $evento');
  //}
  //;

  //List<dynamic> eventos = await stream.toList();
  //print(eventos);

  Future<List<dynamic>> eventosFuturos = stream.toList();
  print(eventosFuturos);
}
