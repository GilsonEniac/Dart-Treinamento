abstract class Animal {
  String idade;
  bool docil;
  bool coluna;

  Animal.vertebrados(String this.idade, {this.docil}) {
    this.coluna = true;
  }
  Animal.invertebrados(String this.idade, {this.docil}) {
    this.coluna = false;
  }

  void dormir() {
    print('Dorme como um animal!');
  }

  void reproduzir();
}
