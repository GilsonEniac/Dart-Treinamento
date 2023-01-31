import 'ContaT.dart';

main() {
  Conta conta = new Conta();

  conta.nome = 'Gilson';
  conta.contaCorrente;
  conta.saldo;

  print('Correntista: ${conta.nome} Numero C/C: ${conta.contaCorrente} Saldo:${conta.saldoConta()} ');
  conta.DepositarT(100);
  print(conta.saldoConta());
  conta.sacar(50);
  print(conta.saldoConta());
}
