main() {
  int multiplo = 4, min = 10, max = 20, resultado = min;

  while (resultado <= max) {
    if (resultado % multiplo == 0) {
      print('Primeiro multiplo de $multiplo entre $min e $max é $resultado');
      break;
    }
    resultado++;
  }
}
