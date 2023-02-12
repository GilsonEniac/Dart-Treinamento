import '4-Acao.dart';
import '1-Artista.dart';
import '2-Cantor.dart';
import '3-Dancarino.dart';

class Musico extends Artista with Dancarino, Cantor implements Acao {
  void acao() => print('Compoe');

  @override
  void executar() {
    super.acao;
    acao();
  }
}
