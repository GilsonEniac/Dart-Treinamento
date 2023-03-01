

main() {
/*Filtra os elementos da coleção criando uma nova do mesmo tamanho ou menor */

  List<Map<dynamic, dynamic>> produtos = [
    {'nome': 'Notebbok', 'preco': 2499, 'fragil': true},
    {'nome': 'Ipad', 'preco': 4499, 'fragil': true},
    {'nome': 'Iphone', 'preco': 2299, 'fragil': true},
    {'nome': 'Magic Mouse', 'preco': 299, 'fragil': false},
  ];

  final fragil = (e) => e['fragil'] == true;
  final nome = (e) => e['nome'];

  List<dynamic> resultado = produtos.where(fragil).map(nome).toList();
  print(resultado);

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Fernando', 'idade': 36},
    {'nome': 'Leila', 'idade': 31},
    {'nome': 'Leandro', 'idade': 17},
  ];

  List<Map<String, dynamic>> maiores = pessoas.where((e) => e['idade'] >= 18).toList();

  Map<String, dynamic> comecaComL = pessoas.firstWhere((e) => e['nome'].startsWith('L')); // orsel ()=> null da erro ver depois

  Map<String, dynamic> menores = pessoas.singleWhere((element) => element['idade'] < 18);

  var idades = (e) => e['idade'];
  var soma = (p, c) => p + c;

  var media = (pessoas.map(idades).reduce(soma)/pessoas.length);

  print('Começa com L : $comecaComL\n Maiores $maiores\n Menore $menores\n Media $media');
}
