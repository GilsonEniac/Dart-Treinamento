///
/// funções arrows possuem um retor no implicito
///

String conceito() => 'Função arrows com retorno implicito';

String somaValores(int vlrA, vlrB) => 'A soma de $vlrA + $vlrB = ${vlrA + vlrB}';

String vericaMaiorIdade(String nome, int idade) => (idade >= 18) ? '$nome é maior de idade' : '$nome não é maior de idade';

String calculaAreaCirculo(double raio) => 'Area do raio é : ${3.14 * raio * raio}';

double desconto(int faltas) => (faltas > 1)
    ? 0.80
    : (faltas == 1)
        ? 0.90
        : 0;

void calculaSalario(String nome, double salario, double bonus, int faltas) {
  var total = salario * desconto(faltas) + bonus;
  print('Empregado: $nome salario $total');
}

main() {
  print(conceito());
  print(somaValores(3, 7));
  print(vericaMaiorIdade('Gilson', 17));
  print(calculaAreaCirculo(2));
  calculaSalario('Gilson', 900, 100, 2);
  print(desconto(2));
}
