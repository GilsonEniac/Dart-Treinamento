
import 'dart:collection';
main() {
//Com objetos

  List<Map<String, Object?>> escola = [
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
  //print(alunoEscola);

//Transformando para uma unica lista de alunos
//List<dynamic> alunosEscola2 = escola.map((e) => e['alunos']).expand((element) => element);

//mapear as notas dos alunos

//var alunosEscola3 = escola.map((e) => e['alunos']).expand((element) => element).map((e) => e['nota'].tolist());
  //print(alunoEscola3);

  //Lsta com todos alunos da escola
  //var alunoEscola = escola.map((e) => e['alunos']).expand((element) => element).map((e) => e['nota'].toList());
  //print(alunoEscola);

//ordenar pela nota dos alunos

//var alunosEscola5;
//alunosEscola5.sort((a,b)=> a['nota'].compareTo(b['nota']));


//double mediaNotas = alunoEscola.map((e) => e['nota'].reduce(p,c)=> p+c) / alunoEscola.length;



var alunoEscola.foreach((e)=>print($e['nome'] $e['nota']));
}
