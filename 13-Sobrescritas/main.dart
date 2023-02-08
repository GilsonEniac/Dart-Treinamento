import '3-Cao.dart';

main() {
  Cao cao = new Cao.domestico('Theo', 'Pug', 'Macho');
  print('[Nome:${cao.nome}], [Raça:${cao.raca}], [Sexo:${cao.sexo}], [Idade:${cao.idade}], [Docil:${cao.docil}] ');
  print('');

  print('[Desenvolvimento:${cao.desenvolvimento}] - [Tipo:${cao.coluna ? 'Vertebrado' : 'Invertebrado'}]');

  cao.dormir();
  cao.alimenta();
  cao.reproduzir();
  cao.acao();
  print(cao);
  print('');
 print('[${cao.nome}] - [${cao.docil ? 'Esta amigavel':'Nao esta amigavel'}]');
}
