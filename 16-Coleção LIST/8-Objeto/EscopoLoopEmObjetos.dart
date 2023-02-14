import 'Caracteristica.dart';
import 'Carro.dart';
import 'Multa.dart';
import 'Proprietario.dart';



main() {
  List<Proprietario> proprietarios = [];

  proprietarios.add(Proprietario('Fernando', 'Rua dos Tolos,0',
  [Carro('Honda Civic', 'Honda', 'ABC1234',Caracteristicas('Passeio',5,130,'Gasolina'),multas: 
  [Multa('Excesso velocidade', 'Gravissima', 7), 
  Multa('Exceeso velocidade', 'grave', 5)]),
  
  Carro('Palio', 'Fiat', 'BCA4321',Caracteristicas('Passeio',5,103,'Gasolina'),multas: 
  [Multa('Excesso velocidade', 'Gravissima', 7), 
  Multa('Exceeso velocidade', 'grave', 5)])
  ]));

}