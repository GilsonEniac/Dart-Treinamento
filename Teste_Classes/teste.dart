

import 'Pessoa.dart';

main() {
  Pessoa pessoa = Pessoa();

  pessoa.nome = 'Gilson';
  pessoa.idade = 55;

  pessoa.info();
  Pessoa pessoa1 = Pessoa();
  pessoa1
    ..nome = 'Cassia'
    ..idade = 49
    ..info();
}
