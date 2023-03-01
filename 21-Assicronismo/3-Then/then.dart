/*
*Conceito
-THEN : registra callbacks que serao chamados quando o Future for concluido.
-onValue : Valor passaado ao termino do Future.
-catchError : Se omitido é lançado como uma Exception
    -> Test : Se qualquer logica retornar true é lançado a Exception
-whenComplete : chama uma função anonima no termino do Future.
*/

Future<String> tarefa({int tempo = 1}) {
  return status(tempo).then((msg) {
    return '${msg}';
  }).catchError(
    (onError) {
      print('CATCHERROR : $onError');
    },
    test: (onError) => onError is Future && onError.runtimeType == Future,
  ).whenComplete(() {
    print('Future Completo');
  });
}

Future<String> status([int tempo = 0]) {
  return Future.delayed(Duration(seconds: tempo), () => Future.error('Erro intencional'));
}

void contagem({int segundos = 3}) {
  print('Carregando...\n');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 30}%');
      if (i == segundos) print('\nConcluido !');
    });
  }
}

main() {
  contagem();
  tarefa(tempo: 4).then((onValue) => print((onValue == null) ? 'Status Nulo':'QQ'));
}
