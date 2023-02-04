//SINGLETON
//É um padrão de projeto para que exista apenas uma instancia de classe;

//O construtor nomeado privado sem o Construtor default impede de instanciar a classe.

//FACTORY
//Construtor Factory é usado para retornar/manter a instancia original

import 'PessoaFactory.dart';

SingletonFactory(){
var p1 =new PessoaFactory();
print(p1.nome);
p1.nome = 'Gilson';
print(PessoaFactory.instancia.nome);
PessoaFactory.instancia.nome='Cassia';
print(p1.nome);
var p2 = PessoaFactory();
p2.nome= 'Theo';
print(PessoaFactory.instancia.nome);
print(identical(p1, PessoaFactory.instancia));
}
singletonInstancia(){
var p1 = new PessoaInstancia(nome: 'Gilson');
print('Nome: ${p1.nome}, Id: ${p1.identidade}');
var p2 = PessoaInstancia(nome: 'Cassia',identidade: 123456789);
print('Nome: ${p1.nome}, Id: ${p1.identidade}');
p2.nome ='Cassia Gomes';
print('Nome: ${p1.nome}, Id: ${p1.identidade}');
print(identical(p1, p2));
print(p2==PessoaInstancia());

}



main(){
  //SingletonFactory();
singletonInstancia();
}