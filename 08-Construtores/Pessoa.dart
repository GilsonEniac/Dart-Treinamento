class Pessoa {
String nome;
 int idade;
 String cor;
 double altura;

  Pessoa(this.nome, this.idade, {String cor, this.altura = 0}) {
    this.cor = (cor == null) ? 'Indefinida' : cor;
    

    print('Construtor resumido com Parametros nomeados ${this.toString()}');
  }
}
