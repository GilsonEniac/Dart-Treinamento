class Pessoa {
  static final Map<String, Pessoa> _pessoas = Map();
  final String nome;
  int? idade;
  double? peso;

  factory Pessoa(String nome, {int? idade, double? peso}) {
    if (_pessoas.containsKey(nome))  
    /*return*/ _pessoas[nome];

    final novaPessoa = Pessoa._construtorPrivado(nome,  idade, peso);
    _pessoas[nome] = novaPessoa;
    return novaPessoa;
  }
  Pessoa._construtorPrivado(this.nome, this.idade, this.peso);

  static void mostrarDetalhes(String nome) {
    if (_pessoas.containsKey(nome)) {
      print('DETALHES : Nome: $nome Idade: ${_pessoas[nome]?.idade}, Peso: ${_pessoas[nome]?.peso}');
    } else {
      print('$nome não existe no MAP de Pessoas');
    }
  }

  static void alterarDetalhes(String nome, {int? idade, double? peso}) {
    if (_pessoas.containsKey(nome)) {
      _pessoas[nome]?.idade = idade;
      _pessoas[nome]?.peso = peso;
      print('ALTERAÇÂO: Nome: $nome Idade: ${_pessoas[nome]?.idade} Peso: ${_pessoas[nome]?.peso}');
    } else {
      print('$nome Não existe no MAP Pessoas');
    }
  }

  static void mostrarPessoas() {
    print('Pessoas : $_pessoas');
    _pessoas.forEach((key, value) => print('ForEaach : ${key}  ${value.idade} ${value.peso}'));
  }

  @override
  String toString() {
    return '$nome : $idade';
  }
}
