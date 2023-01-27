main() {
  loopExterno:
  for (var i = 0; i < 3; i++) {
    print('LoopExterno: i=$i');
    loopInterno:
    for (var j = 0; j <= 3; j++) {
      print('LoopInterno : i=$i e j=$j');
      if (j > 2) break;
      if (i == 1) break loopInterno;
      if (i == 2) break loopExterno;
      print('LooopCompleto\n');
    }
  }
}
