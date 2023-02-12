import 'Abellha.dart';

main() {
  Abelha abe = new Abelha.selvagem('2', false);
  Abelha abe1 = new Abelha.domestica('3', false);

  abe.dormir();
  abe.reproduzir();
  print('');

  abe1.dormir();
  abe1.reproduzir();
}
