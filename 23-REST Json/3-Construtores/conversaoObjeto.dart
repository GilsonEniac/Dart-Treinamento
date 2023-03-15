/*
Serialização Json com objeto
-Utiliza recusros estaticos de linguangens
-Segurança de Tipos, autocompletar e execuções de tempo de compilação



*/
import 'dart:convert';

import 'ListaUsuarios.dart';
import 'Usuario.dart';

String jsonData = '''[{
  "nome":"Fernando",
  "idade": 36,
  "email":"fm@gmail"
  },
  {
  "nome":"Leila",
  "idade": 31,
  "email":"lm@gmail"
  }]''';

main() {
  //DECODE
  List<dynamic> parseJson = jsonDecode(jsonData);
  print('${parseJson}\n');

  ListaUsuarios listaUsuarios = ListaUsuarios.fron1Json(parseJson);
  print(parseJson);

  Usuario usuario = listaUsuarios.usuarios.singleWhere((e) => e.nome == 'Fernando');

  print('USO OBJETO: Nome: ${usuario.nome}, Idade:${usuario.idade}, Email: ${listaUsuarios.usuarios[0].email}\n ');

  var novoUsuario = Usuario.fromJson({'nome': 'Chloe', 'idade': 1, 'email': 'cm@gmail'});
  listaUsuarios.usuarios.add(novoUsuario);

//ENCODE
  List<dynamic> lista = listaUsuarios.to2Json();

  String toJson = jsonEncode(lista);

  print(toJson);
}
