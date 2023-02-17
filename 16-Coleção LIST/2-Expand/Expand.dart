main() {
/*
-Cria uma nova lista expandindo ou concatenando os elementos
*/

  var lista = [
    [1, 2],
    [3, 4]
  ];

  List<dynamic> listaFlat = lista.expand((elemento) => elemento).toList();

  List<dynamic> listaDuplicada = listaFlat.expand((e) => [e, e]).toList();

  print('\n $listaFlat');
  print('\n $listaDuplicada');

  List<num> numeros = [1, 2.5, 5, 7.25, 10];
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];

  List<dynamic> listaDinamica = []; //List(1);

  print('\n $listaDinamica');

  print(listaDinamica = [0, ...inteiros, 15]);
  // ignore: unnecessary_type_check
  print(listaDinamica = [...[], ...inteiros, if (doubles is List<double>) ...doubles]);
  print(listaDinamica=[...[],for(var num in numeros)num]);
}
