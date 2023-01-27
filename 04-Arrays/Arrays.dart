main() {
  var textos = ['Fernando', 'Leila'];
  var numeros = [1, 2.5, 5, 31, 36];
  var condicoes = [!false, true, false, null];

  print('${textos[0]} tem ${numeros[4]} de idade');

  print('${textos[1]}  ${numeros[3] > 18 ? 'é maior' : 'é menor'} de idade');

  print(condicoes[3]);
  //print('condicoes[3] == null ${condicoes[3] ?? (condicoes[0] ? condicoes[1] : condicoes[2])} ');

  bool verdadeiro = !false;

  var arrayDinamico = ['texto', [], 3, 1.5, verdadeiro];
  print(arrayDinamico);
  arrayDinamico[0] = textos[0];
  arrayDinamico[1] = ['Martins', 'de', 'Andrade'];
  arrayDinamico[2] = numeros[2];
  arrayDinamico[3] = numeros[1];
  arrayDinamico[4] = !verdadeiro;
  print(arrayDinamico);

  print('');
  print('funções de Arrys');
  var condicao = [!false, true, false, false];

  arrayDinamico.add(condicao[3]);
  arrayDinamico.insert(0, 'Leila');
  print(arrayDinamico);
  arrayDinamico.removeAt(1);
  print(arrayDinamico);
  arrayDinamico.removeRange(1, 4);
  arrayDinamico.remove('Leila');
  print(arrayDinamico);
  print(arrayDinamico.length);
  print(arrayDinamico);

  arrayDinamico.clear();
  
 // print('ArrayDinamico == NULL> ${arrayDinamico  is Null }');
}
