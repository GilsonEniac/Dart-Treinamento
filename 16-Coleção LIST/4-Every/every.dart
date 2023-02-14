main() {
/*
Faz o testte em todos os elementos com operdor lógico '&&' retornando true ou false

*/

  List<int> inteiros = [0, 1, 2, 3, 4, 5];
  bool resultado = inteiros.every((element) => element >= 0);
  print(resultado);
  print('');
  List<String> texto = ['Fernando', 'Leila', 'Theo'];
  resultado = texto.every((element) => element.contains('e'));
  print(resultado);
}
