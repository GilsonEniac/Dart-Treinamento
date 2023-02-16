
main() {
List<Map<String, dynamic>> carrinho = [
    {'Nome': 'Borracha', 'Preco': 3.45},
    {'Nome': 'Caderno', 'Preco': 13.90},
    {'Nome': 'KitLapis', 'Preco': 41.22},
    {'Nome': 'Caneta', 'Preco': 7.50}
  ];
  Function porcentagem(desconto) => (valor) => desconto * valor['Preco'];
  final moeda = (e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';
  List<String> precos1 = carrinho.map(porcentagem).map(moeda).toList();
  print('Lista de preços: $precos1');
}


