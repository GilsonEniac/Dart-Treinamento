void main() {
  print('02.2 Operadores Aritiméticos (+ - *  / ~/ %), incremento (+= ++) decremento(-= --), assignação( = ??) \n  ');

  var peso = 10;
  peso = peso + 5;
  peso += 5;
  peso++; //incrementa 1

  print(peso);

  var a, b, c, d, e, f;

  a = 3;
  b = ++a; //incrementa antes que  b receba o valor
  print('a: $a , b: $b');

  c = ++a / --b;
  print('a: $a , b:$b');
  print(c);

  d = a ~/ b; //retorna numero inteiro
  print('a: $a , b:$b');
  print(d);

  e = 1;
  f = e;
  f = null;
  f ??= ++e; //f recebe incremento se f for valor nulo;
  print('e: $e , f: $f');

  var x, y, z;
  z = 1;
  x = y ?? z; //x recebe valor de y , a monos que y seja nulo , então x recbe valor de z
  print(x);

  var nome = null;
  print('Nome : ${nome ?? 'Fernando'}\n'); //se o valor for nulo recebe a string 'Ferando'

  var numero = 12;
  var par = numero % 2 == 0; //mostra o resto da divisãp
  var impar = numero % 2 != 0;
  var positivo = numero >= 0;
  var negativo = numero < 0;

  print('numero:$numero, par:$par, impar: $impar, positivo: $positivo, negativo: $negativo');

  var multiplo = 3;

  print('numero: $numero é multiplo de $multiplo ? ${numero % multiplo == 0}');

  int dividendo = 19, divisor = 4;
  double quociente = dividendo / divisor;
  int resto = dividendo % divisor;
  bool exata = resto == 0;
  print('Quocinete:$quociente, exata: $exata, Resto : $resto \n');
}
