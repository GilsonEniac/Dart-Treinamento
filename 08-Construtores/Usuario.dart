class Usuario {
  String? user, senha, nome, cargo;
  int? idade;

  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? 'Sem Nome' : nome;
    this.cargo = (cargo == null) ? 'Usuario' : cargo;

    print('Construtor resumido com Parametros nomeados ${this.toString()}');
  }

  Usuario.admin(this.user, this.senha, {this.nome}) {
    this.nome = (nome == null) ? 'Sem Nome' : nome;
    this.cargo = 'Administrador';
  }
  void autenticar() {
    var user = 'gmg@gmail.com';
    var senha = 'abc123';

    (this.user == user && this.senha == senha) ? print('Usuario Autenticado!') : print('Usuario NãoAutenticado!');
  }
}
