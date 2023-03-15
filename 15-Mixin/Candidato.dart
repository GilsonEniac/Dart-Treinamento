import 'Cidadao.dart';
import 'Contas.dart';
import 'Postagem.dart';
import 'Elegivel.dart';
import 'Presidenciavel.dart';

class Candidato extends Cidadao with Elegivel, Conta implements Postagem, Presidenciavel {
  String objetivo;

  Candidato(String nome, {this.ideologia, this.partido}) : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome do partido $partido o objetivo de $objetivo');
  }

  //interfaces
  @override
  String postagem;
  
  @override
  void escreverPostagem() {
    print('Postagem de $nome no Facebook :$postagem');
  }

  @override
  String ideologia;
  String partido;

  @override
  void ideologiaPolitica() {
    print('$nome é candidato com ideologia de $ideologia pelo Partido $partido');
  }

//mixin
  @override
  void prestacaoContas() {
    elegivel = super.declaracaoRenda();
    if (elegivel) {
      print('Candidato $nome passou na prestação de contas');
    } else {
      print('Candidato $nome Não passou na prestação de contas');
    }
  }
}
