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
  print('1- ' 'a: $a , b: $b');

  c = ++a / --b;
  print('2-  ''a: $a , b:$b');
  print('3-  , $c');

  d = a ~/ b; //retorna numero inteiro
  print('4-  ''a: $a , b:$b');
  print('5-  $d');

  e = 1;
  f = e;
  f = null;
  f ??= ++e; //f recebe incremento se f for valor nulo;
  print('e: $e , f: $f');

  var x, y, z;
  z = 1;
  x = y ?? z; //x recebe valor de y , a menos que y seja nulo , então x recbe valor de z
  print(x);

 
}
