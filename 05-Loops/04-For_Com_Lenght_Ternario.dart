main() {
  String nome = 'Leila';

  for (var i = 0; i < nome.length; i++) {
    print('${(i%2==0)? 'Indice: $i é Par': 'Indice: $i é Impar'}');
  }
}
