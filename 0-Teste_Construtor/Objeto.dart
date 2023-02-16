class Objeto {
  String? nome;
  int? idade;

  void info() {
    print('Nome: $nome Idade:$idade\n');
  }

  Objeto() {
    print('Construtor sem paramentros');
  }
}
