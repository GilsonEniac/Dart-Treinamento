main() {
//Com objetos

  List<Map<String, Object>> escola = [
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
  //lista notas
//List< dynamic> alunosEscola = escola.map((e) => e['alunos']).expand((e) => e).map((e) => e  ['nota']).toList();

//  List<dynamic> alunosEscola = escola.map((e) => e['alunos']).toList();
  //print(alunosEscola);

  //alunosEscola.sort((b, a) => a['nota'].compareTo(b['nota']));
  //print(alunosEscola);
}
