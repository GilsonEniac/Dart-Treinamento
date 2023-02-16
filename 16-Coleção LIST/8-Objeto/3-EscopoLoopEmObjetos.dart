import 'Caracteristica.dart';
import 'Carro.dart';
import 'Multa.dart';
import 'Proprietario.dart';

main() {
  List<Proprietario> proprietarios = [];

  proprietarios.add(Proprietario('Fernando', 'Rua dos Tolos,0', [
    Carro('Honda Civic', 'Honda', 'ABC1234', Caracteristicas('Passeio', 5, 130, 'Gasolina'), multas: [Multa('Excesso velocidade', 'Gravissima', 7), Multa('Exceeso velocidade', 'grave', 5)]),
    Carro('Palio', 'Fiat', 'BCA4321', Caracteristicas('Passeio', 5, 103, 'Gasolina'), multas: [Multa('Excesso velocidade', 'Gravissima', 7), Multa('Exceeso velocidade', 'grave', 5)])
  ]));

  proprietarios.forEach((e) => e.carros.forEach((e) => e.multas.sort((b, a) => a.pontos.compareTo(b.pontos))));



for(var i=0;i< proprietarios.length; i++){
var carros = proprietarios[i].carros;
for(var carro in carros){
  carro.multas.forEach((e) {
    print('${proprietarios[i].nome} \t ${carro.modelo} \t ${carro.placa} \t ${carro.caracteristica.tipo} \t\t ${e.descricao} \t ${e.tipo} \t\t\t ${e.pontos} pontos ');
   });
}
}

}


