import '1-Cidadao.dart';
import '3-Postagem.dart';
import '2-Presidenciavel.dart';

class Candidato extends Cidadao implements Postagem, Presidenciavel {
  String? objetivo;

  Candidato(String nome, {required this.ideologia, required this.partido}) : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome, tem o objetivo de $objetivo');
  }

//interfaces
  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no FaceBook: $postagem');
  }

  @override
  String? ideologia;
  String? partido;

  @override
  void ideologiaPolitica() {
    print('$nome é candidato com ideologia de $ideologia pelo partido $partido');
  }
}
