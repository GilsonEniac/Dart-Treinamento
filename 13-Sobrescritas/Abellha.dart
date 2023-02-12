import '4-Acropodes.dart';

class Abelha extends Acropodes {
  bool ferrao = false;
  @override
  Abelha.selvagem(String idade, bool docil) : super.insetos(idade, docil) {
    this.ferrao = true;
  }

  Abelha.domestica(String idade, bool docil) : super.insetos(idade, docil) {
    this.ferrao = false;
  }
  @override
  void dormir() {
    print('Abelha não dormen');
  }

  @override
  void reproduzir() {
    super.reproduzir();
    print('Uma abelha rainha poe os ovos');
    this.ferrao == true ? print('Abelhas com Ferrão') : print('Abelhas sem ferrão');
  }
}
