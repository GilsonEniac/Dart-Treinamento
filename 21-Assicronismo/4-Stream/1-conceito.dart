/*
CONCEITO
-STREAM : É uma forma de monitorar eventos. 
  Ao adicionar eventos da Stream os ouvintes serão notificados.
  
  ->As Streams fornece uma sequencia assicrona de dados. Para processar uma Stream use WAIT() OU LISTEM().
  
  ->Existem dois tipos de Stream: Assinatura única(subscriton) ou Transmissão(Broadcast).

  ->Stream é uma sequencia de varias Futures! Ao inves de obter um evento solicitados(Future).
  a stream informa que há um evento quando esta pronto


STREAM
  -Fluxo que a classse streamController() esta gerenciando

ADD()
  -Adiciona eventos na stream notificando os ouvintes que estão monitorando.

LISTEM()
  -Inscreve um ouvinte na stream para aguardar notificações de eventos;
    ->onData : Notifica um ouvinte na stream para aguardar notificações de eventos;

    ->onError: Tratamento de eventos com erro e possivel rastreamento Stack Trace. Se omitido    erros serão considerados exceptions

    ->onDOne : Evento chamado quando a stream pe fechado.

    ->cancelOnError : A assinatura é cancelada automaticamente ao receber um evento de erro!
*/

import 'dart:async';

main() {
  //conceito
  var lista = List<dynamic>();

  //1 passo controlador
  var controlador = StreamController<dynamic>();

  //2 passso stream
  var stream = controlador.stream;

  //3 passo incrição de ouvintes na stream
  stream.listen((onData) {
    print('Evento: $onData');
    print(lista); //lista.(onData);
  }, onDone: () {
    print('STREAM FINALIZADA !!');
    print(lista);
  });
// 4 passo adicionar um evento a stream
  controlador.sink.add('Fernando');
  controlador.sink.add(36);
  controlador.sink.add(1.83);
  controlador.sink.add(!false);
  controlador.close();
}
