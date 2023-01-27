void main() {
  if (!true) {
    print('Verdadeiro');
  } else {
    print('Falso');
  }

  print('${!true ? 'Verdadeiro' : 'Falso'}');

  int idade = 19;

  print((idade < 14)? 'Criança': (idade < 18) ? 'Adolescente' : 'Adulto ');

  int nota = 80;
  String resultado = ((nota < 40)? 'Reprovado': (nota < 70) ? 'Recuperação': 'Aprovado');

  print(resultado);

  int numero = 12;

  print('Nomero: $numero  é ${(numero % 2 == 0) ? 'Par' : 'Impar'} e ${(numero > 0) ? 'Positivo' : 'Negativo'}');
  int multiplo = 5;

  print('Numero:$numero ${(numero % multiplo) == 0 ? 'é' : 'Não é '} multiplo de $multiplo');

  int ano = 1984;

  print('Ano:$ano ${(ano % 4 == 0) || (ano % 400 == 0) && (ano != 0) ? 'é bissexto' : 'não é bissexto'}');
}
