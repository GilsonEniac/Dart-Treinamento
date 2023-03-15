import 'dart:convert';

String jsonData = '''[{ "nome":"Fernando", "idade": 36,"email":"fm@gmail"},
{"nome":"Leila", "idade": 31,"email":"lm@gmail"}]''';

main() {
//Decode - converte arquivo Json lara um alIsta em Dart -Serialização
  // List<dynamic> jsonConvert = jsonDecode(jsonData);
  // print(jsonConvert);

  //var listaMap = jsonDecode(jsonData);
  List<dynamic> user = jsonDecode(jsonData);

  print(user[1]);

  // var lista = jsonConvert.forEach((element) {
  //   print(element);
  // });
}
