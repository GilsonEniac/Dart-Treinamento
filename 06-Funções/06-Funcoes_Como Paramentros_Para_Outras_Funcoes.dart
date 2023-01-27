void falar() {
  print('Essa é uma função passada como paramentros nomeado');
}

void saudacao(String nome) {
  print('Olá , eu sou $nome');
  falar();
}

//saudacao2(String nome, () => print('Essa é uma função anonima'));
/// problemas com null na fnção acima
/// 
/// 
/// 
///saudacao2



main() {
  saudacao('Gilson');
}
