import 'dart:math';

class Conta2 {
  bool alteracao = false;
   String _nome;
   double _saldo = 0;
   double _limite = 500;
   String _numeroConta;

  Conta2(String nome) {
    this._nome = nome;
    this._numeroConta = '01-${Random().nextInt(9999)}/00';
    print('Conta Corrente: $_numeroConta, Titutalr: $_nome, Saldo: $_saldo, Limite: $_limite, criado com sucesso!');
  }

  Conta2.vip(String nome, {double limite = 1000}) {
    alteracao = true;
    this._nome = nome;
    this._limite = limite;
    this._numeroConta = '05-${Random().nextInt(9999)}/00';
    print('Conta Corrente: $_numeroConta, Titutalr: $_nome, Saldo: $_saldo, Limite: $_limite, criado com sucesso!');
  }

  get numeroConta => _numeroConta;
//ou
  get numeeroConta2 {
    return _numeroConta;
  }

  get saldo => _saldo;
  //ou
  get saldo2 {
    return _saldo;
  }

  set limite(double limite) {
    if (alteracao) {
      this._limite = limite;
      print('Alteração de limite concluido ! Novo limite: $_limite');
    } else {
      print('Limite Negado !');
    }
  }

  get informacao {
    print('Titutar :$_nome, C/C:$_numeroConta, Saldo:$_saldo, Limite:$_limite ');
  }

  set deposito(double deposito) {
    if (deposito > 0) {
      this._saldo += deposito;
      print('Deposito $deposito Concluito com sucesso!  Saldo Atual: $_saldo ');
    } else {
      print('Valor Negativo !');
    }
  }

  set saque(double saque) {
    if ((saque > 0) && (saque <= _saldo) && (saque <= _limite)) {
      this._saldo -= saque;
      print('Saque no valor de $saque efetuado com sucesso !, saldo : $_saldo');
    } else if (saque > _limite) {
      print('Limite atingido !!!');
    } else {
      print('Saldo Insuficiente');
    }
  }

  
}
