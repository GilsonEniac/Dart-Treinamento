class Usuario {
  String user;
  String senha;

  void autenticar() {
    var user = 'gmg@gmail.com';
    var senha = '123456';
    (user == this.user && senha == this.senha) ? print('Autenticado!\n') : print('Não Autenticado!\n');
  }
}
