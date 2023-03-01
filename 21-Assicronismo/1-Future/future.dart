//Future determina que uma função irá retornar algo no “futuro”, ou seja, é uma função que levará um tempo até ser finalizada.

//É um objeto que retorna um valor ou erro, resultado de uma execução assicrona/futura

String tarefa({int tempo = 1}) {
  var msg = status(tempo);
  return 'Status:$msg';
}

Future<String> status([int tempo=0]) {
  return Future.delayed(Duration(seconds: tempo), () => 'Primeira tarefa finalizada!');
}

novaTarefa({int tempo = 1}) {
  Future.delayed(Duration(seconds: tempo), () => print('\n Segunda tarefa Finalizada!'));
}

void contagem({int segundos = 3}) {
  print('Carregando...\n');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');

      if (i == segundos) print('\n Concluido !');
    });
  }
}

main() {
  print(tarefa(tempo: 10)); //o print sera executado antes do termino futuro

  novaTarefa(tempo: 4); //o print é executado no futuro
  contagem();
}
