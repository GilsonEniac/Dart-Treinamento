main() {
  Map<String, String> listaMap = Map<String, String>();

  listaMap['Java'] = 'Complemento Java';
  listaMap['Flutter'] = 'Complemento Flutter';
  listaMap['Clipper'] = 'Complemento Clipper';

  listaMap.forEach((key, value) => print('${key},${value}'));

  print(listaMap.containsKey('Java'));

  for (var key in listaMap.keys) (key == 'Java' ? print(key) : 'break');
  for (var value in listaMap.values) print(value);

  var letters = ['I', 'II', 'V', 'X', 'L'];
  var numbers = [1, 2, 5, 10, 50];

  var data = Map<String, int>.fromIterables(letters, numbers);
  print(data);
//////
  //Creating Map named map
  Map map = {1: 'Pen', 2: 'Book', 3: 'Ruler', 4: 'Bag'};

  // Using keys property and firstWhere() method
  // to get key in a map
  var key = map.keys.firstWhere((k) => map[k] == 'Bag', orElse: () => null);

  print('The key for value "Bag" : ${key}');
  var valor = map.values.firstWhere((v) => map[v] == 1, orElse: () => null);
  print(valor);

//////
  ///
  Map countries = {"05": "USA", "15": "United Kingdom", "22": "China", "27": "India", "35": "Brazil", "56": "Nepal", "66": "Russia"};

//method 1:
  var key2 = countries.values.firstWhere((v) => countries[v] == "22", orElse: () => null);
  print(key2); //output: 35
}
