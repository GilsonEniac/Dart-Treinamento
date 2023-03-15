/*
ASYNc
  * Sincrona
    -Operações Sincronas : Bloqueia a execução até que seja concluida.
    -Funções Sincrona: executa somente operação sincrona
  * Assincrona
    -Operações Assincronas: Permite executar outras operações enquanto são processadas.
    -Funções Assicronas: Executam ao menos uma operação assicrona e operações sincronas
  *Await
    -Indica a espera uma operação assincrona conclusão de uma Future!
  *Async
    -É e deve ser usada em toda função que tenha operação assincrona await.


*/

//Funções assincronas
Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo);
  return 'STATUS: $msg';
}

Future<String>status([int tempo = 0])  {
  try {
    if (tempo < 4) throw Exception('Tempo insuficiente para o load programado');
    return Future.delayed(Duration(seconds: tempo), () => 'Primeira tarefa finalizada');
  } catch (e) {
    print('CATCH: $e');
    return null;
  }
}

void contagem({int segundos = 3}) {
  print('Carregando...\n');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 30}%');
      if (i == segundos) print('\nConcluido');
    });
  }
}

main() async {
  contagem();
  print( await tarefa(tempo: 4));
}
