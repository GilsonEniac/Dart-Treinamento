void main(List<String> args) {
  String nome = 'Leila';

  for (var i = 0; i < nome.length; i++) {
    if (i % 2 == 0) {
      print('Indice: $i é PAR');
    } else {
      print('Indice: $i é IMPAR');
    }
  }
}
