class Usuario {
  String nome, email;
  int idade;

  Usuario({this.nome, this.idade, this.email});

  factory Usuario.fromJsonU(Map<String, dynamic> json) {
    return Usuario(nome: 
    json['nome'], idade: 
    json['idade'], email: 
    json['email'],);
  }

 Map<String,dynamic>toJson(){
 return {
'nome': nome,
'idade': idade,
'email': email,

    };
  }
 } 

//}
