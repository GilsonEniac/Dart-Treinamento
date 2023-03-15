import 'dart:convert';

String jsonData = ''' [{"nome":"Fernando","idade": 36,"email":"fm@gmail"},{"nome":"Leila","idade": 31,"email":"lm@gmail"}]''';

main() {
  //DECODE converter um arquivo json em uma Lista
  List<dynamic> parseJson = jsonDecode(jsonData);
  print('ParseJson :${parseJson}\n');
  //Pessoa novo = Pessoa.formJson(parseJson);
}

class ListaPessoa {
  List<Pessoa>? pessoa;

  ListaPessoa({this.pessoa});

  ListaPessoa.formJson(List<dynamic> json) : this(
   // pessoa: json['pessoa'],
  );

  Map<String, dynamic> toJson() {
    return {
      'pessoa': pessoa,
    };
  }
}

class Pessoa {
  String? nome;
  String? idade;
  String? email;

  Pessoa({this.nome, this.idade, this.email});

  Pessoa.fromJson(Map<String, dynamic> json)
      : this(
          nome: json['nome'],
          idade: json['idade'],
          email: json['email'],
        );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'email': email,
    };
  }
}
