import 'Objeto.dart';
import 'Animal.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

main() {
  Objeto obj = Objeto();

  obj.nome = 'Gilson';
  obj.idade = 55;
  obj.info();
//ou
  Objeto obj2 = new Objeto();
  obj2
    ..nome = 'Cassia'
    ..idade = 49
    ..info();

  Animal animal = new Animal('Theo', null, 12);
  print("Nome: ${animal.nome}, Raça: ${animal.raca}, Idade:${animal.idade} \n");

  Pessoa pessoa = new Pessoa('Gilson', 55, altura: 1.63);

  print('Nome:${pessoa.nome}, Idade:${pessoa.idade}, Altura:${pessoa.altura}, Cor:${pessoa.cor}\n');

  Usuario usuario = new Usuario(
    'gmg@gmail.com',
    '1234567',
    55,
    nome: 'Gilson',
  );

  print('Nome:${usuario.nome},Cargo:${usuario.cargo},Idade:${usuario.idade} ');
  usuario.autenticar();

  Usuario admin = new Usuario.admin('gmg@gmail.com', '1 23456', nome: 'Gilson');

  print('Nome:${admin.nome},Cargo:${admin.cargo}');
  admin.autenticar();
}
