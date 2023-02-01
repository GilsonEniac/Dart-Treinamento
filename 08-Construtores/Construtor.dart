import 'Usuario.dart';
import 'Animal.dart';
import 'Objeto.dart';
import 'Pessoa.dart';

main() {
  Objeto obj = new Objeto();

  print(obj);

  Animal animal = new Animal('Gilson', 'Pug');

  print('Nome: ${animal.nome} Raça:${animal.raca} Idade:${animal.idade}');

  Pessoa pessoa = new Pessoa('Gilson', 55, altura: 1.63, cor: 'Bfranca');

  print('Nome: ${pessoa.nome} Idade:${pessoa.idade} Altura: ${pessoa.altura} COr:${pessoa.cor}');

  Usuario usuario = new Usuario('ggmg@gmail.com', 'abc123', idade: 55);

  print('User ${usuario.user} Senha ${usuario.senha} Nome: ${usuario.nome} Idade:${usuario.idade} CArgo: ${usuario.cargo}');
  usuario.autenticar();

  Usuario admin = new Usuario.admin('gmg@gmail.com', 'abc123', idade: 55);
  usuario.autenticar();
  print('User ${admin.user} Senha ${admin.senha} Nome: ${admin.nome} Idade:${admin.idade} CArgo: ${admin.cargo}');
  
  admin.autenticar();
}
