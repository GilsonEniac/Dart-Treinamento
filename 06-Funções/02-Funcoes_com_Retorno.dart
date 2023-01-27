
String conceito() {
  return 'Função com retorno string';
}

String somarValores(int valorA, int valorB) {
  //int resultado = valorA + valorB;
  return 'A soma $valorA + $valorB = ${valorA + valorB}';
}

String verificaMaiorIdade(String nome, int idade) {
  return 'O $nome ${idade >= 18 ? 'é maior' : 'é menor'} de idade';
}

String contagemRegressiva(int numero) {
  var result;
  for (int i = numero; i >= 0; i--) {
    (i != 0) ? print('Contagem: $i') : result = 'Vai!!';
  }
  return result;
}

conveertKmMilhas(dynamic array) {
  double milha = 0.621271;
  var myArray = [];

  for (int item in array) {
    //  print('KM $item foi convertido para ${(item * milha).toStringAsFixed(2)} Milhas');
    myArray.add('${(milha * item).toStringAsFixed(2)}');
  }
  return myArray;
}

main() {
  print(conceito());
  print(somarValores(4, 2));
  print(verificaMaiorIdade('Gilson', 55));
  print(contagemRegressiva(5));

  var milhaArray = conveertKmMilhas([5, 10, 20, 50, 100]);

  for (var item in milhaArray) {
    print(item);
  }
}
