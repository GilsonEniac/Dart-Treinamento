main() {
  var a, b, c;

  a = 3;
  b = ++a; //incrementa antes que  b receba o valor
  print('1- ' 'a: $a , b: $b');


  c = ++a / --b;
  print('2-  ' 'a: $a , b:$b');
  print('3-  , $c');
}
