//MIXIN

abstract class Conta {
  late double _saldo;
  double salario = 33000;
  String? teste;

  get saldo => this._saldo;

  set depositar(double valor) => this._saldo = valor;

  bool declaracaoRenda() => _saldo / 12 < salario;
}
