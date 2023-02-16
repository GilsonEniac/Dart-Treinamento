import 'dart:math';

class Pessoa {
  String nome, sobrenome;
  int? _identidade;

  Pessoa(this.nome, this.sobrenome, {int? identidade}) {
    this._identidade = (identidade == null) ? Random().nextInt(99999999) : identidade;
    //this._identidade ??= Random().nextInt(99999999);
  }

  get  identidade => _identidade;
}
