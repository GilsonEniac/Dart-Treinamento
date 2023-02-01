import 'Animal.dart';
import 'Objeto.dart';
import 'Pessoa.dart';

main() {
  Objeto obj = new Objeto();

  print(obj);

  Animal animal = new Animal('Gilson', 'Pug');

  print('Nome: ${animal.nome} Raça:${animal.raca} Idade:${animal.idade}');

  Pessoa pessoa = new Pessoa('Gilson', 55, altura: 1.63,cor: 'Bfranca');

  print('Nome: ${pessoa.nome} Idade:${pessoa.idade} Altura: ${pessoa.altura} COr:${pessoa.cor}');


  
}
