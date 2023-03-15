import 'Usuario.dart';

class ListaUsuarios {
  List<Usuario> usuarios;
//Construtor default da classe
  ListaUsuarios({this.usuarios});

// 1 criado
//  factory ListaUsuarios.fron1Json(List<dynamic> json) {
//    return ListaUsuarios(usuarios: json.map((e) => Usuario.fromJson(e)).toList());
//  }

//Construtor com lista de inicialização, us this para passar os parametros para o Construtor Default
  ListaUsuarios.fron1Json(List<dynamic> json) : this(usuarios: json.map((e) => Usuario.fromJson(e)).toList());

  List<dynamic> to2Json() {
    return usuarios;
  }
}
