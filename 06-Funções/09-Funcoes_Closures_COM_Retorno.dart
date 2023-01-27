//Closures COM retorno

Function somar(int valorA) {
  return (valorB) {
    return valorA + valorB;
  };
}

Function porcentagem(desconto) => (valor) => desconto * valor;

var descontoDez = porcentagem(0.9);
var descontoVintes = porcentagem(0.8);

main() {
  var somaDez = somar(10);
  print(somaDez(50));
  print(descontoDez(100));
  print(descontoVintes(100));
}   