//É uma coleção ordenada entre chaves sem index, que manipula o inicio e o fim da lista

import 'dart:collection';


main() {
  Queue<int> queue = Queue();

  print(queue.runtimeType);

  queue.addAll([20, 30]);
  queue.add(40);
  //queue.add(null);
  queue.addFirst(10);
  queue.addLast(50);
  queue.add(60);
  print(queue);
  queue.removeWhere((e) => e == 60);
  print(queue);

  queue.forEach((e) => print('ForEach: $e'));

  print('');
  for (var i = 0; i < queue.length; i++) {
    print('FOR: ${queue.elementAt(i)}');
  }
  print('');
  for (var element in queue) {
    print('For IN: $element');
  }
}
