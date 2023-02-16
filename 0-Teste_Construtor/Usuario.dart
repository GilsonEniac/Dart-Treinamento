class Usuario {
  late String user, senha, nome, cargo;
  late int idade;

  Usuario(this.user, this.senha, this.idade, {String? nome, String? cargo}) {
    this.nome = (nome == null) ? 'Sem Nome' : nome;
    this.cargo = (cargo == null) ? 'Usuario' : cargo;

    print('Construtor com Paramentro nomeados resumidos');
  }

  Usuario.admin(this.user, this.senha, {String? nome}) {
    this.nome = (nome == null) ? 'Sem Nome' : nome;
    this.cargo = 'Administrador';
  }

  void autenticar() {
    var user = 'gmg@gmail.com';
    var senha = '123456';

    (user == this.user && senha == this.senha) ? print('Autwenticado') : print('Não Autenticado');
  }
}
