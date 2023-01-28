novoObjeto() {
  var id = 0;
  criaObjeto(nome, complemento) {
    return 'ID: ${id++} Nome:$nome Valo:$complemento ';
  }

  return criaObjeto;
}

var desconto = (percentual) => (valor) => percentual * valor;

main() {
  var desc20 = desconto(0.8);

  var obj = novoObjeto();

  var listaObjeto = [obj('Gilson', desc20(1000.00))];
  listaObjeto.add(obj('Casssia', 2000.00));

  print(listaObjeto);
}
