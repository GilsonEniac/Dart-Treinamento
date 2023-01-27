main() {
  print('Hello Word!');
  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  var resultado;

  resultado = valorA + valorB + valorC;

  print(resultado);
  var salario = 1000, descontos = 250;
  var conta = salario - descontos;
  print(conta);
  print('');
  var numero = 3 + ((2 * 4) + (10 / 5));
  print('');
  print(numero);
  print('');
  print("Concatenar " "Strings " "é simples assim");
  print('');
  var texto1 = "\nGilson ";
  var texto2 = "Gomes";
  var texto3 = " e\nCassia Volpati";

  print(texto1 + texto2 + texto3);

  var verdadeiro = true;
  var falso = false;
  print("\nVerdadeiro1 = $verdadeiro");
  print("\nFalso = ${falso}");

  dynamic variavel = 2.0;
  print('\n${variavel}');
  variavel = 2;
  print('\n$variavel');
  variavel = 'dois';
  print('\n$variavel');
  variavel = true;
  print('\n$variavel');
}
