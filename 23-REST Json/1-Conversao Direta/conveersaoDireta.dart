import 'dart:convert';

/*
*Conceito:
  -REST: Represetation State Transfer(Transferencia Representacional de Estado).
  -É uma arquitetura que define um conjunto de restrições na criação de Web  Services.
  -É uma padronização para multiplas aplicações possam se comunicar usando protocolo HTTP.


  *Serialização Manual 
    - Biblioteca Json integrada ao Dart 'Dart:convert'
  *Serialização Json Direta
    -Perde recursos estaticos de linguagens
    -Segurança de tipo, autocompletar e execuções de tempo de compilação.

*/
//arquivo exemplo json
String jsonData = '''{
  "nome":"Fernando",
  "idade":36,
  "email": "fm@gmail"
},
{
  "nome":"Fernando",
  "idade":36,
  "email": "fm@gmail"
}
''';
main() {
//DECODE

  Map<String, dynamic> parseJson = jsonDecode(jsonData);
  print('${parseJson}\n');

  String nome = parseJson['nome'];
  int idade = parseJson['idade'];
  String email = parseJson['email'];

  print('Nome: $nome Idade: $idade Email: $email');

//ENCODE
  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};
  String toJson = jsonEncode(map);

  print('ToJson : $toJson');
}
