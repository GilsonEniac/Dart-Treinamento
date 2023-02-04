import 'Pessoa.dart';

main() {
  //Inicializada apenas quando acessada em tempo de execução, deve ser declarada!

  //Em coleções FINAL nem todos conteudo seerá FINAL.



  var pessoa = new Pessoa('Gilson', ['Cassia', 'Mae']);
  pessoa.nome = 'Gilson Moura';
  // pessoa.familiares = []; erro atributo final
  print('${pessoa.nome}, ${pessoa.familiares}');
}
