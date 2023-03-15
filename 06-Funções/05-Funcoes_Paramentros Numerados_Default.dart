///
///Paramentros Posicioonados
///     podem ser incluidos em qualquer ordem
///     Utilizados quando vc tem  muitos paramentros para passar e não tem que lemabar da ordem
///

void exibirDados2(String nome, {int peso = 78, double altura}) {
  print('Nome: $nome, Altura: ${altura ?? 'Não Informado'} Peso: $peso');
}

void main() {
  exibirDados2('Gilson');
  exibirDados2('Cassia', altura: 1.70, peso: 70);
  exibirDados2('Ju', peso: 50, altura: 1.50);
}
