var novoObjeto = () {
  var id = 1;

  criaObjeto(nome, complemento) {
    return 'Id: ${id++} Nome: $nome Valor $complemento';
  }

  return criaObjeto;
};
Function desconto(porcentagem) => (valor) => porcentagem * valor;

main() {
  var desc10 = desconto(0.9);

  var objeto = novoObjeto();
  print(objeto);

  var listaObjeto = [objeto('Gilson', desc10(100.00))];
  listaObjeto.add(objeto('Cassia', '300.00'));

  //void printLista(element) => print(element);

  void meuPrint(element) {
    print(element);
  }

  ;

  listaObjeto.forEach((meuPrint));
}
