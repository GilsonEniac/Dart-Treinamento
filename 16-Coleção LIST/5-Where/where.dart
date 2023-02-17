/*
WHERE
Filtra os elementos da coleção criando uma nova coleção do mesmo tamanho ou menor

*/

main() {
  List<int> idades = [36, 12, 18, 31, 17, 23];
  // ignore: unnecessary_type_check
  print(idades.where((element) => element is int)); //retorno em itereble
  print('');
  print(idades.whereType<int>());
  print('');
  List<int> adultos = idades.where((e) => e > 17).toList();
  var crianca = idades.singleWhere((e) => e < 12, orElse: ()=> 0);
  int menor = idades.lastWhere((element) => element.toString().startsWith('3'),orElse: ()=>0);
  var menor2 = idades.where((element) =>element.toString().startsWith('1'));
  print('Adultos: $adultos, Criança:$crianca,Menor:$menor,Menor2:$menor2');
}
