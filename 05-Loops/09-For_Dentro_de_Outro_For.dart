main() {
  for (var i = 0; i < 2; i++) {
    for (int j = i; j < 2; j++) {
      for (int k = j; k < 2; k++) {
        print('i=$i  j=$j  k=$k');
      }
    }
  }
}
