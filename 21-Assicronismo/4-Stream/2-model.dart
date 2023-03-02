import 'dart:async';
import 'dart:math';

class Contador {
  int _contagem = 1, termino, erro;
  final _controlador = StreamController<int>();

  Sink<int> get sink => _controlador.sink;
  Stream<int> get stream => _controlador.stream;

  Contador({this.termino = 5, this.erro = 3}) {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _contagem < termino ? sink.add(_contagem) : sink.close();
      _contagem++;
      // if (_contagem == erro) _contagem.addError('Erro Intencional');
      if (_contagem > termino) timer.cancel();
    });
  }
}

main() {
//Stream
  var minhaStream = Contador(termino: 5, erro: 3).stream.asBroadcastStream();

//Inscrição de ouvintes na stream
  var instrito_01 = minhaStream.listen((onData) {
    print('Inscrito_01: $onData');
    onError:
    (e) {
      print('Inscrito_01 : $e');
    };
    cancelError:
    false;
    onDone:
    () {
      print('Inscrito_01: Completo !!!');
    };
  });

//modificar eventos
  var pares = (e) => e % 2 == 0;
  var mapear = (e) => "$e é par";

  var inscrito_02 = minhaStream.where(pares).map(mapear).listen((onData) {
    print('Inscrito_02: $onData');

    onError:
    (e) {
      print('Inscrito_02: $e');
    };

    cancelError:
    false;

    onDone:
    () {
      print('Inscrrito_02:Conpleto !!!');
    };
  });

//Gerenciar inscritos
  for (var i = 1; i <= 3; i++) {
    Future.delayed(Duration(seconds: i), () {
      if (i == 1) instrito_01.pause();
      if (i == 2) instrito_01.resume();
      if (i == 3) instrito_01.cancel();
    });
  }
}
