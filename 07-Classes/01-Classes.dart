import 'Conta.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

main() {
  Pessoa pessoa1 = new Pessoa();

  pessoa1.nome = 'Gilson';
  pessoa1.idade = 55;

  print('Nome:${pessoa1.nome} idade :${pessoa1.idade}');

  pessoa1.info();

  Pessoa pessoa3 = new Pessoa();
  pessoa3
    ..nome = 'Cassia'
    ..idade = 49
    ..info();

  Usuario usuario1 = new Usuario();
  usuario1.usuario = 'gg@gmail.com';
  usuario1.senha = '123456';
  usuario1.autenticar();

  Conta conta = new Conta();

  conta.nome = 'Gilson';
  conta.numeroConta;
  conta.saldo;
  print('Nome:${conta.nome} Conta nº:${conta.numeroConta} Saldo: ${conta.consultaSaldo()}');
  print('');
  conta.depositar(200);
  
  print('');
  conta.depositar2(100);
  
}
