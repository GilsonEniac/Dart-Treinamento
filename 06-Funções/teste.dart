var novoObjeto = () {
  var id = 1;
  criaObjeto(nome, complemto) {
    return {'iD': (id++), 'Nome': nome, 'Valor': complemto};
  }

  return criaObjeto;
};

Function desconto(porcentagem) => (valor) => porcentagem * valor;
main() {
  var desc1 = desconto(0.9);
  var objeto = novoObjeto();

  var objetoNew = [objeto('Gilson', 1000.00)];
  objetoNew.add(objeto('Cassia', desc1(2000.00)));

  for (var item in objetoNew) {
    print(item.map((c,v) => MapEntry(c,v)));///(v is double) ? '${desc1(v)}' : v)));
  }

 
}
