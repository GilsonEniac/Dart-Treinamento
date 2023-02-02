

class Usuario {
  bool alteracao = false;
  late String nome;
  late String _senha;

  Usuario(this.nome, String senha) {
    this._senha = senha;
  }

//Getter padrão
  String get senha {
    return _senha;
  }

  ///OU
get senha1 => _senha;

  //Setter Padrão
  set senha(String senha){
    if (alteracao) {
      _senha = senha;
      print('Sucesso: Senha alterada');
    } else {
      print('Erro: Acesso negado!');
    }
  }
}
