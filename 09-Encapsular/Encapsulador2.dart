import 'Conta2.dart';

void main(List<String> args) {
  Conta2 conta = new Conta2('Cassia Volpati');

  print(conta);
  print('');

  var vip = Conta2.vip('Gilso', limite: 15000);

  print(vip);
  vip.deposito = 20000;
  vip.saque = 10000;
}
