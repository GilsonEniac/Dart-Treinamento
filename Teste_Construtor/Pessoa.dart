class Pessoa {
  String? nome, cor;
  int? idade;
  double? altura;

  Pessoa(this.nome, this.idade, {String? cor, this.altura}) {
    this.cor = (cor == null) ? 'Não definida' : cor;
    print('Construtor com parametros nomeados ');
  }
}
