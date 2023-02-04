import 'Brasil.dart';

main() {
  //CONST
  //Inicializada em tempo de compilação, deve ser declarada com valor constante.

  //Ao nivel de Classes deve ser Staticas para ficar disponivel na Classe.

  //Em Coleções CONST todo conteudo deve ser constante

  //OBJETO IMUTAVEL
  //O Contrutor deve ser CONST
  //As variaveis devem ser FINAL ou STATIC CONST



  
  const pi = 3.14;
  double raio = 2;
  var resultado = pi * (raio * raio);
  print(resultado);
  print('');

  final numeros = [raio, 2.5];
  numeros.add(resultado);
  print(numeros);
  print('');

  final dynamic listaFinal = const [0, 1];
  //listaFinal.add(2);
  print(listaFinal);
  print('');

  const listaConst = [1, 2, pi];
  //listaConst.add(pi);
  print(listaConst);

  for (var i = 0; i < 3; i++) {
    final indiceFinal = i;
    const constante = 2;
    print('Contagem ${constante + indiceFinal}');
  }

  Brasil pais = new Brasil(-15.792371, -47.882326);
  //pais.latitude = 12;
  //pasi.capital='';

  print('Objeto: $pais, Capital:${Brasil.capital} Latidude:${pais.latitude} Longitude:${pais.longitude}');

  print('Estados: ${Brasil.estados}');

}
