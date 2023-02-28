import 'Pessoa.dart';

void main(List<String> args) {
  Pessoa p1 = Pessoa('Fernando', idade: 36, peso: 65);
  Pessoa p2 = Pessoa('Leila', idade: 31, peso: 60);
  Pessoa('Fernando', idade: 63); //não deicxa alterar singleton
  Pessoa('Leila', idade: 13); // não deixa alterar singleton
  Pessoa('Theo');

  Pessoa.mostrarPessoas();
//  p1.peso = 70;
//  Pessoa.mostrarDetalhes('Fernando');
//  p2.peso = 61.1;
//  Pessoa.alterarDetalhes('Theo', idade: 1, peso: 7);
//  Pessoa.mostrarPessoas();
}
