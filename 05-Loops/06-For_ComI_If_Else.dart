void main(List<String> args) {
  //Quais os multiplos de 2 e 3 no intervalo entre 5 e 12

  for (var i = 5; i <= 12; i++) {
    if (i == 0) {
      print('$i é multiplos de todos os Numeros!');
    } else if (i % 2 == 0 && i % 3 == 0) {
      print('$i é divisivel por 2 e 3');
      }else if(i% 3 ==0){
        print('$i é divisivel por 3');
      }else if(i%2 ==0){
        print('$i é divisivel por 2');
      }else{
        print(i);
      }
    }
  }

