/*
REDUCE
-Compara os elementos da coleção retornando um unico elemento.
-Ao interagir com os elementos o indice 0 se torna o anterior e o indice 1 se torna o atual.
*/

main() {
  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);

  int resultado = numerosPares.reduce((ant, atual) {
    print(ant + atual);
    return ant + atual;
  });
  print('');
  print(resultado);
  print('');

  List<bool> boleanas = [true, false, !true, !false];
  bool and = boleanas.reduce((ant, atual) => ant && atual);
  bool or = boleanas.reduce((ant, atual) => ant || atual);
  print('AND: $and OR:$or');
  print('');

  List<int> idades = [36, 12, 18, 31, 17, 23];
  int maisNovo = idades.reduce((ant, atual) => (ant > atual) ? atual : ant);
  int maisVelho = idades.reduce((ant, atual) => (ant < atual) ? atual : ant);
  int media = idades.reduce((ant, atual) => ant + atual);

  print('Mais Novo: $maisNovo MAIS Velho:$maisVelho Media:${media / idades.length}');
}
