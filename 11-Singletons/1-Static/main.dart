import 'PessoaStatic.dart';

main() {
  print(PessoaStatic.instancia.nome);
  PessoaStatic.instancia.nome = 'Gilson';
  print(PessoaStatic.instancia.nome);

  var p1 = PessoaStatic.instancia;
  var p2 = PessoaStatic.instancia;

  p1.nome = 'Theo';
  p2.nome = 'Cassia';

  print(identical(p1, p2));
  print(p2==PessoaStatic.instancia);
}
