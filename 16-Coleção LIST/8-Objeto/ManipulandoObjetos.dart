import 'Pessoa.dart';


main() {
  Pessoa p1 = Pessoa('Fernando', 'Martins', identidade: 12345678);
  Pessoa p2 = Pessoa('Leila', 'Martins', identidade: 87654321);
  List<Pessoa> pessoas = [p1, p2];
  pessoas.add(Pessoa('Theo', 'Martins'));

  for (var i = 0; i < pessoas.length; i++) {
    print('For : ${pessoas[i].nome}\t ${pessoas[i].sobrenome}\t ${pessoas[i].identidade}');
  }
  print('');
  for (var pessoa in pessoas) {
    print('ForIN : ${pessoa.nome}\t ${pessoa.sobrenome}\t ${pessoa.identidade}');
  }
  print('');
  pessoas.forEach((e) {
    print('ForEach: ${e.nome}\t\t${e.sobrenome}\t\t ${e.identidade}');
  });
}
