import 'dart:math';

main() {
/*
CONCEITO
-List é uma coleção dinamica e ordenada de elementos entre colchetes;
-ForEach: Aplica a função anônima  a cada elemento da nossa coleção.
-Todo arry é um List<?>;

*/
  var array = [0, 2.5, 5, 7.25, 10];
  array.forEach((elemento) {
    print('ForEach:$elemento');
  });

  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<bool> boleanos = [true, false, !true, !false];
  List<String> frutas = ['Morango', 'Banana', 'Tomate'];
  print('\nImplementação : ${frutas.runtimeType}');

  print('\nboleana[3]:${(boleanos[inteiros.length]) ? 'Verdadeiro' : 'Falso'}\n');

  frutas.insert(0, 'Abacaxi');
  frutas.add('Laranja');
  frutas.forEach((e) => print('$e'));

  print(frutas);
  frutas.removeLast();
  frutas.removeWhere((e) => e == 'Banana');
  print(frutas);

  print(frutas.elementAt(2));
  print(frutas.contains('abacaxi')); //camelCase

//adicionar conteudo em listas
  List<num> numeros = List.from(inteiros);
  numeros.addAll(doubles);
  numeros.shuffle();
  numeros.sort();

  print(numeros);

  List<dynamic> lista = [];

  lista = numeros.take(3).skip(1).take(2).toList();
  print(lista);

//Geradores de listas

  List<String> listaPreenchida = List.filled(2, 'Elemento');
  List<String> listaGerada = List.generate(2, (i) => 'Nome${i}');
  List<double> listaPrecos = List.generate(5, (i) => double.parse(((i + 1) * Random().nextDouble()).toStringAsFixed(2)));

  print(listaPreenchida);
  print(listaGerada);
  print(listaPrecos);

  listaPrecos.forEach((element) => print(element));
}
