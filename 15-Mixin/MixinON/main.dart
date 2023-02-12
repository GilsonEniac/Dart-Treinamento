/*
É obrigatorio declarar sua classe como mixin
Restringe o uso do mixin as classes que estendam ou implementam a classe declarada
*/

import 'Mc.dart';
import 'Musico.dart';

void main(List<String> args) {
  Musico musico = new Musico();

  musico.executar();
  print('');
  Mc mc = new Mc();

  mc.executar();
}
