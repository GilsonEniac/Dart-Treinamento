import 'dart:math';

class Conta {
  String nome = 'Fernando';
  int numeroConta = new Random().nextInt(10);
  double saldo = 0;

//metodo para chamar o saldo;
  double consultaSaldo() => this.saldo;

  void depositar(double valorDeposito) => print('Deposito: ${valorDeposito} Saldo:${this.saldo += valorDeposito}');
  //ou
  // void depositar(double valorDeposito){
  //print('Saldo: valorDeposito  Deposito: $this.saldo')
  // }

  void depositar2(double valordeposito) {
    this.saldo += valordeposito;
    print('Deposito: ${valordeposito} Saldo:${consultaSaldo()} ');
  }

  double depositar3(double valorDeposito) {
     return this.saldo += valorDeposito;
    
  }

  void sacar(double valorSaque) => (valorSaque > this.saldo)print('valor acima do saldo'):print((valorSaque)'Saque:${this.saldo -= valorSaque} Saldo: ${consultaSaldo()} ');
}
