void main(List<String> args) {
  var nome = 'Leila';

  for (var i = 0; i < nome.length; i++) {
    print('indice $i ${nome.substring(i,i+1)}');
  }
}
