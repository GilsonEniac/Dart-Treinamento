/*
CONCEITO
Mixin permite implementar metodo e atributos de outras classes.
REGRAS
-Devem ser implementadas antes das Interfaces
-Podem ser implementadas a partir de uma classe concreta ou abstrata.
-Não pode implementar uma classe que extenda e extender de uma classe mixin.
-Pode implementar mais de um mixin e não é obrigatorio usar todos os metodos e atributos.
-As classes que possuem metodos iguais serão sobrescritos em ordem ate a classe herdeira


MIXIN ON
-É obrigatório declarar sua classe como mixin.
-Restringe o uso do mixin as classes que extendam ou implementam a classe declarada.
*/

import 'Candidato.dart';

void main(List<String> args) {
  Candidato minions = new Candidato('Minions', ideologia: 'Direita', partido: 'PSL');

  minions.objetivo = 'Ganhar as Eleições';
  minions.objetivosPessoais();
  minions.postagem = 'Vou acabar com a corrupção !';
  minions.escreverPostagem();
  minions.ideologiaPolitica();
  minions.depositar = 394000;
  minions.prestacaoContas();
}
