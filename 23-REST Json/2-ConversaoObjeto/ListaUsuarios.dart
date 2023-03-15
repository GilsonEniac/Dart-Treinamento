import 'Usuario.dart';

class ListaUsuarios {
  List<Usuario> usuarios;

  ListaUsuarios({this.usuarios});

  factory ListaUsuarios.from1Json(List<dynamic> json) {
    return ListaUsuarios(usuarios: json.map((e) => Usuario.fromJsonU(e)).toList());
  }

  List<dynamic> to2Json() {
    return usuarios;
  }
}
