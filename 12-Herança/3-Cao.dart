import '2-Mamiferos.dart';

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao(this.nome, this.raca, String? sexo, {String? idade, bool docil = false}) : super(sexo, idade, docil) {
    idade = (idade == null) ? 'indefinido' : idade;
    sexo = (sexo == null) ? 'Indefinido' : idade;
  }

  void acao() {
    print('Late como um cachorro');
  }

  void temperamento() {
    docil == true ? print('Animal Docil') : print('Animal Bravo');
  }
}
