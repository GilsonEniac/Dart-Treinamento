import '1-Animal.dart';

abstract class Mamiferos extends Animal {
  String sexo;
  String? desenvolvimento;

  Mamiferos.placentarios(this.sexo, String? idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentarios';
  }

  Mamiferos.marsupiais(this.sexo, String? idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Marsupiais';
  }

  Mamiferos.monotremados(String this.sexo, String? idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimenta() {
    print('Se alimenta');
    print('como um');
  }

}
