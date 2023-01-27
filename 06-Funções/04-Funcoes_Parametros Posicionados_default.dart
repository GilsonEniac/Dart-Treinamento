
///
///Caracteristicas desta função
/// função sem retono
/// Função com paramentros Posicionados
///     NÂO pode mudar sua posição
///     Tem que definir um valor default
///     Ideal caso necessite passar um paramentro especifico caso não seja definido
/// Default => Quando voce definie um valor para variavel , exemplo -> int peso =79
///

void exibirDados1(String nome, [int? peso, double? altura]) {
  if ((peso == null) && (altura ==null))
    print('Nome: $nome');
  else
    print('Nome: $nome Peso: $peso Altura: $altura');
}

main() {
  exibirDados1('Gilson',90,1.68);
}
