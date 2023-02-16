main() {
//Transforma /seleciona os elementos de uma coleção ccriando uma nova coleção do mesmo tamanho

  List<Map<String, dynamic>> carrinho = [
    {'nome': 'Borracha', 'preço': 3.45},
    {'nome': 'Caderno', 'preço': 13.9},
    {'nome': 'KitLapis', 'preço': 41.22},
    {'nome': 'Caneta', 'preço': 7.5},
  ];

  porcentagem(desc) => (valor) => desc * valor['preço'];

  final moeda = (e) => 'R\$ ${e.toString().replaceFirst('.', ',')}';
  final moeda2 = (e) => 'R\$ ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';

  var precos1 = carrinho.map(porcentagem(.9)).map(moeda2).toList();
  print(precos1);
  var precos2 = carrinho.map((e) => e['preço'] * .9).map(moeda2).toList();

  //ou
  var preco3 = carrinho.map((e) => e.update('preço', (e) => e * .9)).map(moeda2).toList();
  print('teste $preco3');

  String precoMedio = (carrinho.map((e) => e['preço']).reduce((value, element) => value + element) / carrinho.length).toStringAsFixed(2);

  print(precoMedio);
}
