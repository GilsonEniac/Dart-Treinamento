import '4-Acao.dart';
import '3-Dancarino.dart';

class Mc with Dancarino implements Acao {
  void acao() => print('Mixa..bota o batidao...');

  @override
  void executar() {
    super.acao();
    acao();
  }
}
