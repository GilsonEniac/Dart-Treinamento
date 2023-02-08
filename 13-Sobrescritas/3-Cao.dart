

import '2-Mamiferos.dart';

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao.domestico(this.nome, this.raca, String sexo, {String idade = 'Indefinida', bool docil = true}) : super.placentarios(sexo, idade, docil: docil);

  Cao.selvagem(this.nome, this.raca, String sexo, {String idade = 'Indefinida',  bool docil = false}) : super.placentarios(sexo, idade, docil: docil);

  @override
  void dormir() {
    print('Dorme como um cão !');
  }

  @override
  void alimenta() {
    super.alimenta();
    print('Cão');
  }

  @override
  void reproduzir() {
    print('Reproduz como um Cão');
  }

  void acao() {
    print('Late como um Cão');
  }

  String toString() {
    return 'Instance of ${this.runtimeType} Nome: $nome, Raça: $raca, Sexo: $sexo';
  }

}
