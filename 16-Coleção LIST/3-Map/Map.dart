/*
MAP
Transforma/seleciona os elementos de uma coleção criando uma nova coleção do mesmo tamanho
*/



main() {
  List<String> frutas = ['Morango', 'Banana', 'Tomate'];
  List<String> frutasMapeadas = frutas.map((e) => '$e é uma fruta').toList();
  print(frutasMapeadas);

  List<int> inteiros = [1, 5, 10];
  var incrementar = (int e) => ++e;
  final dobro = (int e) => e * 2;

  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList();

  print('');
  print(inteirosMapeados);

  List<double> doubles = [2.75, 5.5, 7.25];
  final triplo = (e) => e * 3;
  final moeda = (e) => 'R${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';

  porcentagem(desc) => (valor) => desc * valor;

  List<dynamic> doublesMapeados = doubles.map(triplo).map(porcentagem(0.9)).map(moeda).toList();

  print(doublesMapeados);
}
