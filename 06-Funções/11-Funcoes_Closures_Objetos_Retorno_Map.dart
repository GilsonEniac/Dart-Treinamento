var novoObjeto = (int vlr) {
  var id = vlr;
  var objetoCriado = (String nome, descricao) {
    //return {'id ${++id} Nome: $nome Descrição: $descricao'};
    return {'id': (id++).toString().padLeft(2, '0'), 'Nome': nome, 'Descrição': descricao};
  };
  return objetoCriado;
};

var desconto = (percentual) => (valor) => percentual * valor;
var desc10 = desconto(0.9);

main() {
  var objeto = novoObjeto(2);
  print(objeto);

  var listaObjetos = [objeto('Gilson', 100.00)];
  listaObjetos.add(objeto('Cassia', 50.00));
  listaObjetos.add(objeto('Bella', 20.00));

  for (var item in listaObjetos) {
    print(item.map((c, v) => MapEntry(c, (v is double) ? '${desc10(v)}' : v)));
  }
}
