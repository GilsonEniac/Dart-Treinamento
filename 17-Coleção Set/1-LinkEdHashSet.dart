main() {
  Set<int> setInt = Set();
  print('Implementação: ${setInt.runtimeType}');

  //setInt[0] = 3; // não tem acesso ao index
  setInt.add(13);
  setInt.add(13); // não permite duplicidade
  setInt.add(17);
  setInt.add(14);
  setInt.remove(13);

  print(setInt);

  for (var i = 0; i < setInt.length; i++) {
    print('FOR: ${setInt.elementAt(i)}');
  }

  for (var element in setInt) {
    print("ForIN: $element");
  }

  setInt.forEach((e) => print('ForEach: $e'));

//Funções especificas  coleção SET

  Set<int> listaA = {0, 1, 2, 3, 4};
  Set<int> listaB = {3, 4, 5, 6, 7};

  print(listaA.difference(listaB));
  print(listaA.union(listaB));
  print(listaA.intersection(listaB));
  print(listaA.lookup(5));
}
