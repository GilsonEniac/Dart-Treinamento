/** -Compara os elementos da coleção retornando um unico elemento resultante.
 *  -Ao interagir com os elementos o indice 0 se trona anterior e o indice 1 se torna o atual.
 */
main() {
  List<Map<String, dynamic>> alunos = [
    {'nome': 'Fernando', 'nota': 7.3, 'bolsista': false},
    {'nome': 'Leila', 'nota': 9.2, 'bolsista': true},
    {'nome': 'Theo', 'nota': 9.8, 'bolsista': true},
    {'nome': 'Bartolomeu', 'nota': 8.7, 'bolsista': false},
  ];

  final bolsista = (e) => e['bolsista'] as bool;
  final nomes = (e) => e['nome'];
  final notas = (e) => e['nota'];
  final soma = (p, c) => p + c;

  List<dynamic> bolsistasNomes = alunos.where(bolsista).map(nomes).toList();

  List<Map<String, dynamic>> medias = alunos.where(bolsista).toList();

  var bolsistasMedia = medias.map(notas).reduce(soma) / medias.length;

  bool todosBosistas = alunos.map(bolsista).reduce((p, c) => p && c);
  bool algumBolsista = alunos.map(bolsista).reduce((p, c) => p || c);

  print(bolsistasNomes);
  print(medias);
  print(bolsistasMedia);

  print('Todos são bolsistas ? ${todosBosistas ? 'Sim' : 'Não'}');
  print('Tem algum Bolsista ?  ${algumBolsista ? 'Sim' : 'Não'}');

  print('Aluno bolsista : ${bolsistasNomes} Média ${bolsistasMedia}');

  List<dynamic> funcionarios = [
    {'nome': 'Leila', 'genero': 'M', 'salario': 1599.70, 'pais': 'Brasil'},
    {'nome': 'Fernando', 'genero': 'H', 'salario': 1234.36, 'pais': 'Argentina'},
    {'nome': 'Theo', 'genero': 'M', 'salario': 1730.30, 'pais': 'Brasil'},
  ];

  final brasileiro = (e) => e['pais'] == 'Brasil';
  final mulheres = (e) => e['genero'] == 'M';
  final menorSalario = (p, c) => p['salario'] < c['salario'] ? p['salario'] : c['salario']; //filtro para salario
  final funcMenorSal = (p, c) => p['salario'] < c['salario'] ? p : c; //filtro funcionario

  List<dynamic> selecionados = funcionarios.where(brasileiro).where(mulheres).toList();
  print(selecionados);
  print(selecionados.reduce(menorSalario));

  Map<String, dynamic> funcionario = selecionados.reduce(funcMenorSal);
  print(funcionario);

  print('Funcionario: ${funcionario['nome']}, salario : ${funcionario['salario']}');
}
