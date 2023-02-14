/*
FOLD
-Compara os elementos da coleção retornando um unico elemento resultante.
-O valor inicial se torna o anteerior e o indice 0 se torna o atual.

*/

main() {
  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);
  print('');
  int valorInicial = 10;

  int resultado = numerosPares.fold(valorInicial, (ant, atual) {
    print(ant + atual);
    return ant + atual;
  });
  print('');
  print('Resultado: $resultado');

  valorInicial = 30;
  resultado = numerosPares.fold(valorInicial, (ant, atual) {
    print(ant - atual);
    return ant - atual;
  });
  print('');
  print('Resultado: $resultado');
}
