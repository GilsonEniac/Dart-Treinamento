//É uma coleção de elementos unicos e desordenados

import 'dart:collection';

main() {
  HashSet<String> hashSet1 = HashSet();
  HashSet<int> hashSet2 = HashSet();
  HashSet<int> hashSet3 = HashSet();

  hashSet1.add('A');
  hashSet1.add('B');
  hashSet1.add('c');
  hashSet1.add('D');

  hashSet2.add(2);
  hashSet2.add(1);
  hashSet2.add(3); // quando tiver somente um decimal ele ordena !!!

  hashSet3.add(11);
  hashSet3.add(22);
  hashSet3.add(33);

  print('$hashSet1, $hashSet2, $hashSet3');

  for (var i = 0; i < hashSet1.length; i++) {
    print('FOR: ${hashSet1.elementAt(i)}');
  }
  print('');

  for (var element in hashSet1) {
    print('For IN: $element');
  }

hashSet1.forEach((e)=>print('ForEACH: $e'));


}
