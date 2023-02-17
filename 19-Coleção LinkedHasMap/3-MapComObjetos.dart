main() {
//Com objetos

  List<Map<String?, dynamic>> escola = [
    {
      'nome': 'Turma T1',
      'alunos': [
        {'nome': 'Fernando', 'nota': 8.1},
        {'nome': 'Leila', 'nota': 9.3}
      ]
    },
    {
      'nome': 'Turma T2',
      'alunos': [
        {'nome': 'Theo', 'nota': 8.9},
        {'nome': 'Bartolomeu', 'nota': 7.3}
      ]
    }
  ];
  var alunoEscola = escola.map((e) => e['alunos']);
  print(alunoEscola);
  print('');
//Transformando para uma unica lista de alunos
  print(alunoEscola);
//mapear as notas dos alunos

//var alunosEscola3 = escola.map((e) => e['alunos']).expand((element) => element).map((e) => e['nota'].tolist());
//print(alunosEscola3);

  //Lsta com todos alunos da escola
 // var alunoEscola5 = escola.map((e) => e['alunos']).expand((element) => element).map((e) => e['nota'].toList());
 // print(alunoEscola5);

//ordenar pela nota dos alunos

//var alunosEscola5;
//var alunosEscola.sort((a,b)=> a['nota'].compareTo(b['nota']));

//double mediaNotas = alunoEscola.map((e) => e['nota'].reduce(p,c)=> p+c) / alunoEscola.length;

//var alunoEscola.foreach((e)=>print($e['nome'] $e['nota']));
}
