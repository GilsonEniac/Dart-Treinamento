class Animal {
  String? nome;
  String? raca;
  int? idade;

  Animal(String nome, [String? raca, int idade = 0]) {
    this.nome = nome;
    this.raca = (raca == null) ? 'Raça não Definida' : raca;
    this.idade = idade;
    print('Construtor com parametro posicionais e Default');
   
  }
}
