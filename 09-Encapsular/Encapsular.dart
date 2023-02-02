import 'Usuario.dart';
import 'Usuario2.dart';
import 'Conta.dart';

main() {
  var usuario = Usuario('Gilson Moura', '12345');

  print(usuario.nome);
  print(usuario.senha);
  usuario.senha = 'abc123';
  usuario.alteracao = true;
  usuario.senha = 'abc123';
  print(usuario.senha);
  print(usuario.senha1);

  Usuario2 usuario2 = new Usuario2('Cassia Volpati', '123456');
  print('');
  print(usuario2.nome);
  print(usuario2.senha);
  usuario2.senha = 'abcde';
  usuario2.alteracao = true;
  usuario2.senha = 'abcdef';
  print('');

  var conta = Conta('Cassia Volpati');

  conta
    ..deposito = 900
    ..deposito = 450
    ..saque = 550
    ..saque = 500;
  print('');
  conta.informacao;
  conta.alteracao = true;
  conta.limite = 1000;
  conta.informacao;
  conta.alteracao = false;

  print('');

  Conta vip = new Conta.vip('Gilson Moura Gomes  ', limite: 12500);
  vip.deposito = 15000;
  vip.saque = 15000;
  vip.limite = 15000;
  vip.saque = 15000;
  vip.informacao;
  print(vip.numeroConta2);
  print(vip.informacao1);
  vip.informacao;
}
