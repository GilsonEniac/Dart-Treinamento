import 'Static.dart';

main() {
  double raio = 6;

  var calculo1 = new Calculos();
  print(calculo1.pi);
  print(calculo1.areaCirculo(raio));
  print('');

  Calculos calculo2 = new Calculos();
  print(calculo2.pi);
  print(calculo2.areaCirculo(raio));
  print('');
  print('Instancias consomem ${identical(calculo1, calculo2) ? 'Menos' : 'Mais'} memoria');

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));
  print('');
  print('Retorn iguais ${Calculos.areaCirculoEstatico(raio)== Calculos().areaCirculo(raio) ? 'SIM' :'NAO'} metodos diferentes');
}
