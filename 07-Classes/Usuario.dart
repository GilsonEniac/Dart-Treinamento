class Usuario {
  String usuario;
  String senha;

  void autenticar() {
    var usuario = 'gg@gmail.com'; // informação vinda de um banco de dados como exemplo
    var senha = '123456';
    if ((this.usuario == usuario) && (this.senha == senha)) {
      print('Usuario autenticado !');
    } else {
      print('Usuario Não autenticado !');
    }
  }
}
