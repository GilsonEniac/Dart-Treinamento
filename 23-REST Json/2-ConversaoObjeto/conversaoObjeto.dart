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
  //DECODE converter um arquivo json em uma Lista
  List<dynamic> parseJson = jsonDecode(jsonData);
  print('ParseJson :${parseJson}\n');

  ListaUsuarios listaUsuarios = ListaUsuarios.from1Json(parseJson);

  print('listaUsuarios :${listaUsuarios}');

  Usuario usuario = listaUsuarios.usuarios.singleWhere((e) => e.nome == 'Fernando');

  print('USO OBJETO: Nome: ${usuario.nome}, Idade:${usuario.idade}, Email: ${listaUsuarios.usuarios[0].email}\n ');

  var novoUsuario = Usuario.fromJsonU({'nome': 'Chloe', 'idade': 1, 'email': 'cm@gmail'});
  listaUsuarios.usuarios.add(novoUsuario);

//ENCODE converter uma lista para um arquivo Json
  List<dynamic> lista = listaUsuarios.to2Json();

  String toJson44 = jsonEncode(lista);

  print('\n ENCODE: ${toJson44}');
}
