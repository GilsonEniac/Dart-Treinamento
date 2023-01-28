import 'dart:math';

class Conta {
  String nome = 'Fernando';
  int numeroConta = new Random().nextInt(10);
  double saldo = 0;

//metodo para chamar o saldo;
  double consultaSaldo() => this.saldo;

  void depositar(double valorDeposito) => print('Saldo:${this.saldo += valorDeposito} Deposito: ${valorDeposito}');
  //ou
  // void depositar(double valorDeposito){
  //print('Saldo: valorDeposito  Deposito: $this.saldo')
  // }

  void depositar2(double valordeposito) {
    this.saldo += valordeposito;
    print('Saldo:${consultaSaldo()} Deposito: ${valordeposito}');
  }
}
