import 'Static.dart';

main() {

  //Variavel estatica fica disponivel na propria classe 
  //em vez de SUAS INSTANCIAS/OBJETOS.
  
  //Em metodos ESTATICOS devem usar variaveis estaticas da classe.

  //Variaveis ESTATICAS podem ser acessadas sem precisar instaciar a Classe/objeto
  
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
  print('Retorn iguais ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'SIM' : 'NAO'} metodos diferentes');
  print('');
  print(Calculos.piEstatico);
  print('');
  Calculos.areaCirculoEstatico(51);
  print(Calculos.areaCirculoEstatico1(300));
}
