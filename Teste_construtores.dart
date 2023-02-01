class Classe {
  late int propriedade;

  Classe(int parametro) {
    this.propriedade = parametro;
    print('Propriedade: ${this.propriedade}');
  }
}

main() {
  Classe cla = new Classe(10);

  print(cla);
}
