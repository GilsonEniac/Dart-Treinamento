import 'Usuario.dart';

class ListaUsuarios {
  List<Usuario>? usuarios;

  ListaUsuarios({this.usuarios});

  factory ListaUsuarios.fron1Json(List<dynamic> json) {
    return ListaUsuarios(usuarios: json.map((e) => Usuario.fromJson(e)).toList());
  }

  List<dynamic>? to2Json() {
    return usuarios;
  }
}
