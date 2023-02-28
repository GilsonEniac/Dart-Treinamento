import 'Carros.dart';

main() {
  Carro c1 = Carro('Honda', 'Civic');
  Carro c2 = Carro('Toyota', 'Corolla');
  Carro c3 = Carro('Fiat', 'Palio');

  Map<String, Carro> carros = {'0': c1, '1': c2};
  carros['2'] = c3;

  for (var i = 0; i < carros.length; i++) {
    print('For : $i ${carros['${i}']?.modelo}');
  } //se ordenado por string ou num pode usar FOR

  for (String chave in carros.keys) {
    final car = carros[chave];
    print('For IN : $chave ${car?.modelo}');
  }

  carros.forEach((key, value) => print('ForEach : ${key}   ${value.modelo}'));
}
