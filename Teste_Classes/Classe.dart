import 'Pessoa.dart';
import 'Usuario.dart';
import 'Conta.dart';

main() {
  Pessoa pessoa = new Pessoa();
  pessoa.nome = 'Gilson';
  pessoa.idade = 55;

  pessoa.info();
  Pessoa pes = new Pessoa();
  pes
    ..nome = 'Gil'
    ..idade = 53
    ..info();

  Usuario usuario = new Usuario();
  usuario.user = 'gmg@gmail.com';
  usuario.senha = '123456';
  print('${usuario.user},${usuario.senha}');

  usuario.autenticar();

  Conta conta = new Conta();
  conta.nome = 'Gilson';
  conta.numConta;
  conta.saldo;

  print('Nome:${conta.nome},Conta Corrente:${conta.numConta},Saldo:${conta.saldo}');
  conta.calcularSalario(100, 100, 2);
  print('Nome:${conta.nome},Conta Corrente:${conta.numConta},Saldo:${conta.saldo}\n');

  conta.depositar(20);
  conta.sacar(201);
}
