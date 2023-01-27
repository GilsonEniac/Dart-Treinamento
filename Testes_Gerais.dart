var novoObjeto = () {
  var id = 0;
  criaObjeto(nome, complemento) {
     return '[${(id++).toString().padLeft(3,'0')}] $nome $complemento';
  }

  return criaObjeto;
};

main() {
  Function desconto(percentual) => (valor) => percentual * valor;

  var objeto = novoObjeto();

  var desc10 = desconto(0.9);

  var listaObjeto = [objeto('Gilson', desc10(1000.00))];
  listaObjeto.add(objeto('Cassia', desc10(2000.00)));

  listaObjeto.forEach((element) {
    print(element);
  });
}
