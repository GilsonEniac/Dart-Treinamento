void main() {
  print('(02.0) Operadores Lógicos ( &&  || ! )');

  ///Operador &&  somente sse ambas as arfimações forem treu o rettorno ser true
  ///Operador || precisa somente que uma das afirmações seja verdadeira para retorna true
  ///OPeradro ! inverte o valor booleano
  ///
  var verdadeiro = !false;
  bool falso = !true;

  //print('verdadeiro = ${verdadeiro} FAlso = ${falso}');
  //print('Operador ! !true = ${!true} !falso = ${!false}');

  bool teste1 = verdadeiro || verdadeiro;
  bool teste2 = verdadeiro || falso;
  bool teste3 = falso || falso;
  print('Operador% (||) ${teste1} - ${teste2} - ${teste3}');
  print('Operador (&&)  ${true && true} - ${true && false} = ${false && false}');

  bool operacao = (1 <= 2) && (3 > 2);
  print(operacao);
  operacao = !(1 > 2) && ((3 < 2) || falso);

  print(operacao);
}
