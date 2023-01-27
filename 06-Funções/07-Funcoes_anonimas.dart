///
///Funções anonimas como variaveis sem parametro
///

var variavelAnonima = () => print('Variavel anonima');

///
///Variavel anonima com paramentro
var variavelAnonima2 = (String msg) => print('Variavel Anonima com paramentro $msg');

///
///Funções anonimas como parametros

void executaFuncao(Function funcao) => funcao();



main() {
  variavelAnonima();
  variavelAnonima2('Com parametros');
executaFuncao(()=> print('Função anonima passada como parametro'));

}
