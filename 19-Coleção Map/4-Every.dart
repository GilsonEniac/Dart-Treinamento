main() {
  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Lucio', 'idade': 60},
    {'nome': 'Leila', 'idade': 31},
    {'nome': 'Lenadro', 'idade': 17},
  ];

  print(pessoas.every((e) => e.containsKey('nome')));
  print(pessoas.every((e) => e['idade'] >= 17));
  print('');
  bool maiores = pessoas.every((element) => element['nome'].startsWith('l'));
  print('');
  print(maiores);
}
