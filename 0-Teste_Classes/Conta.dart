import 'dart:math';

class Conta {
  String nome;
  int numConta = Random().nextInt(10);
  double saldo = 0;

  void consultaSaldo() => print('Saldo é : ${this.saldo}');

  double descontos(int faltas) => (faltas == 1)
      ? 0.9
      : (faltas >= 2)
          ? 0.8
          : 0;

  void calcularSalario(double salario, double bonus, faltas) {
    var calculaSalario = descontos(faltas) * salario + bonus;

    print('Salario:${calculaSalario}, Bonus:${bonus},Faltas:${faltas}, Saldo:${this.saldo += calculaSalario}');
  }

  void depositar(double dep) => print('Saldo é: ${this.saldo += dep}\n');
  void sacar(double saq) => (this.saldo < saq)? print('Saldo Insuficiente! ${this.saldo}'): print('Saldo é :${this.saldo -= saq}');
}
