import 'dart:math';

class Conta {
  bool alteracao = false;
  String _nome;
   double _saldo = 0;
   double _limite = 500;
   int _numeroConta;

  Conta(String nome) {
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print('Contan Corrente: $_numeroConta Titular: $_nome, Limite:$_limite Conta  Criada com Sucesso!');
  }

  Conta.vip(String nome, {double limite = 10000}) {
    this.alteracao = true;
    this._nome = nome;
    this._limite = limite;
    this._numeroConta = Random().nextInt(9999);
    print('Contan Corrente: $_numeroConta Titular: $_nome, Limite:$_limite com Sucesso!');
  }

//Getter padrão
  get numeroConta => _numeroConta;
//OU
  get numeroConta2 {
    return _numeroConta;
  }

  get saldo => _saldo;

  //Setter Padrão
  set limite(double limite) {
    if (alteracao) {
      this._limite = limite;
      print('Limite alterado para : $_limite');
    } else {
      print('Permissão negada! alteração limmite do titular');
    }
  }

//Getter e Setter customizaveis

  get informacao {
    print('Titular :$_nome, Nº C/C:$_numeroConta, Saldo:$_saldo, Limite: $_limite');
  }

//OU
  String get informacao1 => 'Titular :$_nome, Nº C/C:$_numeroConta, Saldo:$_saldo';

  set deposito(double deposito) {
    if (deposito > 0) {
      this._saldo += deposito;
      print('Depoisto no valor: $deposito Saldo atual: $_saldo');
    }
  }

  set saque(double saque) {
    if (saque > 0 && saque <= _limite) {
      if (saque <= _saldo) {
        this._saldo -= saque;
        print('Saque efetuado : $saque, SAldo atual é : $_saldo');
      } else {
        print('Saldo: $_saldo Insuficiente para saque de $saque');
      }
    } else {
      print('Limite para saque é:$_limite');
    }
  }
}
