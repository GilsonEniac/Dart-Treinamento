///Ocorre quando uma função é declarada de do corpo dde outra função
///podendo retorna as variaveis locais e das funções superiores

var saudacao = (String nome) {
  var mensagem = (complemento) => print('Olá $nome $complemento');
  mensagem('Seja bem vindo !');
};

main() {
  saudacao('Gilson');
}
