

final states = {'AK': 'Alaska', 'AL': 'Alabama', 'AR': 'Arizona'};
main() {
  states.forEach((k, v) {
    print('The abbreviation $k stands for $v.');
  });

  var data = [1, 2, 3, 4, 5, 6];
  data.takeWhile((element) => element <= 1).forEach(print);
print('');
  data.where((element) => element >= 5).forEach((print));
  print('');
  data.where((element) => element % 2 == 0).forEach((print));

  
}
