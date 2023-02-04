import '../1-Static/PessoaStatic.dart';

main() {
//ENCAPSULADOR GETTER 'GET'
//SINGLETON
//É um padrao de projetos paara que existaa somente  um unica insancia da classe
//o Construtor nomeado se Constutor default  impede a instanciar a classe
//GETTER
//A _instancia privada é acessada atraves do GET.

  print(PessoaStatic.instancia.nome);
  PessoaStatic.instancia.nome = 'Gilson';
  print(PessoaStatic.instancia.nome);

  var p1 = PessoaStatic.instancia;
  var p2 = PessoaStatic.instancia;

  p1.nome = 'Theo';
  print(PessoaStatic.instancia.nome);
  p2.nome = 'Cassia';
  print(PessoaStatic.instancia.nome);

  print(identical(p1, p2));

  print(p2 == PessoaStatic.instancia);
}
