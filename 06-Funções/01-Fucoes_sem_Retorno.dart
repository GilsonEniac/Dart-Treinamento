void conceito() {
  print('função VOID sem retorno');
}

void somarValorees(int valorA, int valorB) {
  var resultado = valorA + valorB;
  print('A soma de $valorA + $valorB = $resultado');
}

void somaValores2(int valorA, int valorB) {
  print('A soma de $valorA + $valorB = ${valorA + valorB}');
}

void verificaMaioIdade(String nome, int idade) {
  var resultado;
  if (idade >= 18) {
    resultado = 'é maior';
  } else {
    resultado = 'é menor';
  }
  print('O $nome $resultado de idade');
}

void verificaIdade2(String nome, int idade) {
  print('$nome ${idade >= 18 ? 'é maior' : 'é menor'} de idade');
}

void contagemRegressiva(int numero) {
  for (int i = numero; i >= 0; i--) {
    print('Contgem: ${(i == 0) ? 'Vai !!' : i}');
  }
}

void contagemRegressiva2(int numero) {
  for (int i = numero; i >= 0; i--) {
    if (i != 0) {
      print('Contagem: $i');
    } else {
      print('Contagem: Vai !!!');
    }
  }
}

void converteKmMilhas(dynamic array) {
  var milha = 0.621271;

  for (var item in array) {
    print('A Km $item foi convertida para ${(milha * item).toStringAsFixed(2)} milhas');
  }
  print('Km convertidas para milhas e arredondadas');
}

main() {
  conceito();
  somarValorees(4, 5);
  somaValores2(3, 6);
  verificaMaioIdade('Gilson', 55);
  verificaIdade2('CASSIA', 49);
  contagemRegressiva(5);
  contagemRegressiva2(8);
  converteKmMilhas([1, 5, 10, 20, 30, 40, 60, 80, 100, 120, 150, 200]);
}
