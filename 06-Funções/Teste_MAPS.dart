main() {
  

  ///maneira de crias MAPS
  ///
  var ListaMap = {'Gilson': 'Comentario Gilson', 'Cassia': 'Comentario Cassia', 'Bella': 'Comentario Bella'};

  ListaMap.forEach((key, value) {
    print('${key} => ${value}');
  });
  ListaMap.keys.forEach((element) => (print('Olá meu nome é $element')));
  ListaMap.values.forEach((print));

  for (var i in ListaMap.entries) {
    print('Chave :${i.key} e Valor: ${i.value}');
  }

  Map<String, String> listaTotal = Map<String, String>();

  listaTotal['Joao'] = 'ddddd';
  listaTotal['Maria'] = 'ljsckss';

  var listaChave = ['Gilson', 'Cassia', 'Laura', 'Duda', 'Belle', 'Theo'];
  var listaValor = ['Coment Gilson', 'Coment Cassia', 'Coment Laura', 'Coment Duda', 'Comente Belle', 'Coment Theo'];

  print(listaTotal.length);
  int total = listaValor.length - 1;

  while (total >= 0) {
    listaTotal[listaChave[total]] = listaValor[total];
    total--;
  }

  listaTotal.forEach((key, value) {
    print('teste $key');
  });

  for (var item in listaTotal.entries) {
    print('Chave:${item.key} Valor:${item.value}');
  }
}
