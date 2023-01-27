

void main() {
  print('(01.1) Variaveis Funções');

  num pi = 3.14;
  print(pi.floor()); //3 arredonda para baixo
  print(pi.round()); // arredonda 3 para mais proximo
  print(pi.ceil()); // arredonda para cima 4
  print(pi.clamp(3, 3.2)); //limita valor 3.2
  print(pi.compareTo(3)); // -1 for inferior , se 0 igual, se 1 é maior
  print(pi.remainder(3)); //0.14000000000000012
  print(pi.toInt()); // para numero inteiro 3
  print(pi.toString()); // para string '3.14'
  print(pi.toStringAsFixed(1)); // 3.1
  print(pi.truncate()); //  3
  print(pi.isNegative); // false
  print(pi.isInfinite); //false
  print((pi / 0).isInfinite); //true
  print(12.gcd(16)); // 4 minimo multipli compum
  print(2.toDouble()); // 2.0
  print('1'.padLeft(3, '0')); // 001
  print('1'.padRight(3, '0')); // 100



}