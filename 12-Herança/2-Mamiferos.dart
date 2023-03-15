import '1-Animal.dart';

class Mamiferos extends Animal {
  String sexo;

  Mamiferos(this.sexo, String idade, bool docil) : super(idade,docil:docil);
 

  void alimientar() {
    print('Se alimimenta como um Mamifero');
  }
}
