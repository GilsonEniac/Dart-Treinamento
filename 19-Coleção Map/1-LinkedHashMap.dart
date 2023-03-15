main() {
//Map é uma coleção dinamica e customizavel de chaves e valores entre {}.
//As chave são unicas e os valores não se repetem

  List<String> nomes = ['Fernando', 'Leila'];
  Map<int, String> nomesMap = nomes.asMap(); // converte uma list em MAP
  print(nomesMap);
  nomesMap.forEach((key, value) => print('${key} : ${value}'));

  Map<String, dynamic> frutas = Map();
  frutas['Banana'] = 'Amarela';
  frutas['Banana'] = 'Verde'; //mesma chave atualiza o valor
  frutas['Goiaba'] = 'Amarela';
  frutas['Maçã'] = 'Vermelha';

  print('\n $frutas');

  print(frutas.containsKey('Banana'));
  print(frutas.containsValue('Azul'));
  print(frutas['Banana']);
  frutas.clear();
  frutas[null] = null;
  print(frutas);

  //Funções basicas MAP
  print('');
  Map<String, dynamic> usuario = Map.from({'nome': 'Fernando', 'idade': 36, 'peso': 65.5});
  print(usuario);

  usuario.update('nome', (value) => '$value Martins');
  print(usuario);

  usuario.update('idade', (value) => ++value);
  print(usuario);

  usuario.update('peso', (value) => 70, ifAbsent: () => 'Indefinido');
  print(usuario);
  usuario.removeWhere((key, value) => value == 70); //key == 'peso' && value ==70);
  print(usuario);

  usuario.update('peso', (valor) => 70, ifAbsent: () => 'Indefinido');
  print(usuario);

  usuario.putIfAbsent('altura', () => 1.83);
  print(usuario);

  usuario.addAll({'sexo': 'masculino', 'casado': true});
  print('$usuario');

  print(usuario.keys);
  print(usuario.values);

  //LOOPS

  Map<int, dynamic> numeros = {0: 'zero', 1: 'um', 2: 'dois'};
  print(numeros);

  print(numeros.map((key, value) => MapEntry(key, value.toString().toUpperCase())));

  for (var chave in numeros.keys) {
    print('FORin: $chave');
  }

  for (var valor in numeros.values) {
    print('ForIN: $valor');
  }

  for (var key in numeros.keys) {
    final valor = numeros[key];

    print('Chave: $key : Valor: ${valor.toString().toUpperCase()}');
  }
}
