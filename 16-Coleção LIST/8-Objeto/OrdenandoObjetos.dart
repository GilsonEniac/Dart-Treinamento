import 'Venda.dart';
import 'Vendedor.dart';

main() {
  List<Vendedor> vendedores = [];

  vendedores.add(Vendedor('Fernando', [Venda('Iphonex', 2500.25), Venda('MacBook', 5300.00), Venda('Galaxy10', 3500.25)]));
  vendedores.add(Vendedor('Leila', [Venda('Iphone8', 3000.00), Venda('GalaxyS10', 3500.25), Venda('Iphonex', 3500.25)]));
  vendedores.add(Vendedor('Theo', [Venda('Iphonex', 3500.25), Venda('Iphonex', 3500.25), Venda('GalaxyS10', 3500.25)]));

//Organiza lista de vendas pela soma total

vendedores.sort((b, a) => (a.vendas.fold(0, (anterior, atual) => anterior + (atual.preco).compareTo(b.vendas.fold(0, (ant, atual) => ant + atual.preco)))));

//Organizar as vendas de cada vendedor

 vendedores.forEach((e) => e.vendas.sort(((a, b) => a.preco.compareTo(b.preco))));
  
  
  
  
  vendedores.forEach((e) => print('Vendedor #${e.nome} \t ${e.vendas.length} vendas \t totalizando  ${e.vendas.fold(0, (anterior, atual)=>anterior + atual.preco.toInt())} reais \t vendas ${e.vendas.map((e) => e.preco).toList()}'));
}
