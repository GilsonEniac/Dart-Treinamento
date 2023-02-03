import 'dart:math';

class Conta3 {
  bool aprovacao = false;
  late String _nome;
  late int _contaCorrente;
  late double _limite = 500;
  late double _saldo = 0;

  Conta3(String nome) {
    this._nome = nome;
    this._contaCorrente = Random().nextInt(9999);
    print('Conta de $nome , criada com Sucesso!');
  }

  Conta3.vip(String nome, {double limite = 1000}) {
    aprovacao = true;
    this._nome = nome;
    this._limite = limite;
    this._contaCorrente = Random().nextInt(9999);
  }

  void info() => print('Titular:$_nome, C/C:$_contaCorrente, Limite:$_limite, Saldo:$_saldo ');

  get saldo => print('Saldo atual: ${this._saldo}');
  get contaCorrente => this._contaCorrente;

  set alteraLimite(double limite) {
    if (limite > 0) {
      if (aprovacao) {
        this._limite = limite;
        print('Limite Alterado com Sucesso! para : $limite');
      } else {
        print('Limite não autorizado!');
      }
    } else {
      print('Valor digitado e Zero ou menor que Zero!');
    }
  }

  set deposito(double deposito) {
    if (deposito > 0) {
      this._saldo += deposito;
      print('Deposito OK no valor de $deposito saldo atal é $_saldo');
    } else {
      print('Não é um valor valido !');
    }
  }

  set saque(double saque) {
    if (saque > 0 && saque <= _saldo) {
      if (saque <= _limite) {
        this._saldo -= saque;
        print('Saque OK!');
      } else {
        print('Limite Exedido!!');
      }
    } else {
      print('Saldo insuficiente!');
    }
  }
}
