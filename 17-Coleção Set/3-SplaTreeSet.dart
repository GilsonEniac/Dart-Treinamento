//Organiza automaticamente os elementos em ordem cresccente.
//Por ser uma arvore de comparações não pode conter elementos null
//

import 'dart:collection';

main() {
  SplayTreeSet<String> sts = SplayTreeSet();

  sts.add('info1');
  sts.add('info3');
  sts.add('info');
  sts.add('info2');

  print(sts);

  for (var i = 0; i < sts.length; i++) {
    print('FOR: ${sts.elementAt(i)}');
  }

  for (var e in sts) {
    print('ForIN: $e');
  }

sts.forEach((e)=> print('ForEach:$e'));


}
