import 'dart:math';

class Conta {
  late String nome;
  late int contaCorrente = Random().nextInt(100);
  double saldo = 0;

  saldoConta() => this.saldo;

  void  DepositarT(double valorDep) => print('Deposito : ${valorDep} Saldo: ${this.saldo += valorDep}');

  void sacar(double vlrSaque) => print('Valor Saque: ${vlrSaque} Saldo: ${this.saldo -= vlrSaque}');
}
