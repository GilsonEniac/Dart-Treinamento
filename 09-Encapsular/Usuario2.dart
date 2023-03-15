class Usuario2 {
  bool alteracao = false;
   String nome;
   String _senha;

  Usuario2(this.nome, String senha) {
    this._senha = senha;
  }

  String get senha {
    return _senha;
  }

  String get senha1 => _senha;

  set senha(String senha) {
    if (alteracao) {
      this._senha = senha;
      print('Sucesso : senha alterada !');
    } else {
      print('Erro : Acesso Negado !');
    }
  }
}
