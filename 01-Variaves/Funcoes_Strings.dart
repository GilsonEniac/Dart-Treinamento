
main(){
/*

  * Tipos de variáveis
  num(int,double), string, bool, dynamic
*/

  String nome = 'Fernando';
  String nomeCompleto = '\t Fernando Martins';


  print(nome.toLowerCase()); //fernando
  print(nome.toUpperCase()); //FERNANDO
  print(nomeCompleto.trim()); //Fernando Martins remove tabulação
  print(nomeCompleto.split(' ')); // [	, Fernando, Martins]
  print(nome.split('')); //[F, e, r, n, a, n, d, o]
  print(nome.substring(3, 8)); //nando
  print(nome.startsWith('F')); //true
  print(nome.startsWith('nando')); //false
  print(nome.replaceAll('n', 'x')); //Ferxoxdo trocou o 'n' pelo 'x'
  print(nome.replaceFirst('Fer', '')); //nando
  print(nome.replaceFirst('o', 'a', 7)); //Feranda
  print(nome.replaceRange(3, 5, '')); //Ferndo
  print(nomeCompleto.trim().split(' ')); //[Fernando, Martins]
  print(nome.contains('f')); // false
  print(nome.contains('e')); //true
  print('indexOf, ${nome.indexOf('nando')}'); // posição 3
  print(nome.length); // 8 tamanho da string
  print(nome.endsWith('o')); // true
  print(nome.compareTo('Fernando')); // 0 se o paramentro for igual
  print('Compara se tiver parte no inicio: ${nome.compareTo('Fern')}'); // 1 se tiver parte do  no inicio
  print(nome.compareTo('Ligia')); // -1 se nao for igual ao paramentro
  print(' '.isEmpty); // false
  print(''.isEmpty); // true
  print(double.parse('12.5')); //'12.5'
 // print("1" is String); // true
  //print(int.parse('12') is int); //true
  print(nome.lastIndexOf('a')); //4

  String sopa = 'sopa de letrinhas';
  int index = sopa.indexOf(' de ');

  print(sopa);
  print(index);
  print('A sopa é ${sopa.substring(index).trim()}');

  print('');

  num numero = 3.14;

  print(numero is double); // true
  print(numero is! double); // false
}
