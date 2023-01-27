main() {
  loopExterno:
  for (var i = 1; i <= 2; i++) {
    print('loopExterno: $i');
    loopInterno:
    for (var j = 1; j <= 3; j++) {
      print('LoopINterno: i=$i e j=$j');
      if (i == 2 && j == 1) continue loopInterno;
      if (i == 2 && j == 2) continue loopExterno;
      print('LoopCompleto');
    }
  }
}
