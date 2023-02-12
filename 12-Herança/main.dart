import '3-Cao.dart';


/*    
Regras:
Uma Classe pode ter somente uma herança

CONSTRUTORES
-Devem obedecar a ordem dos parametros.
-Parametros Default devem ser Nomeados ou Posicionados.
-Tratamento e Tipagem de Parametros devem ser feitos na Classe Herdeira
*/


main() {
  //Mamiferos man = new Mamiferos('Femea','24',true);

  //print(man.sexo);

  Cao cao = new Cao('Theo', 'Pug', 'Femea'); //,idade: '24',docil: true);

  print('Nome:${cao.nome} Raça:${cao.raca} Sexo:${cao.sexo}, Iade:${cao.idade}, Docil:${cao.docil}');

  cao.dormir();
  cao.alimientar();
  cao.acao();
  print('');
  cao
    ..dormir()
    ..alimientar()
    ..acao();
  cao.temperamento();
  cao.docil = true;
  cao.temperamento();
}
