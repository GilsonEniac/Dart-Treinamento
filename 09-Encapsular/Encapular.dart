import 'Conta3.dart';

main() {
  Conta3 conta = new Conta3('Cassia Volpati');

  conta.info();
  conta.saldo;
  print(conta.contaCorrente);
  conta.alteraLimite = 1000;
  conta.aprovacao = true;
  conta.alteraLimite = 1000;
  conta.info();
  conta.deposito = 1000;
  conta.info();
  conta.deposito = 100;
  conta.saque = 0;
  print('');
  var vip = Conta3.vip('Gilson Moura', limite: 10000);

  vip.info();
  vip.deposito = 50000;
  vip.saque = 100;
  vip.info();
  vip.saque = 15000;
  vip.alteraLimite = 20000;
}
