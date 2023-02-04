import 'Pessoa.dart';

main() {
  var pessoa = new Pessoa('Gilson', ['Cassia', 'Mae']);
  pessoa.nome = 'Gilson Moura';
  // pessoa.familiares = []; erro atributo final
  print('${pessoa.nome}, ${pessoa.familiares}');
}
