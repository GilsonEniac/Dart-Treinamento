class Usuario {
  String nome, email;
  int idade;

//Construtor default da classe
  Usuario({this.nome, this.idade, this.email});

/*
original o primeiro
Construtor Factory retorna uma nova instancia do Construtor default da classe a partir de um map
factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      nome: json['nome'], 
      idade: json['idade'], 
      email: json['email'],
      );
  }

*/

/*
  /Construtor nomeado  (SIMPLES)para cria uma nova instancia a partir de um map
  
  Usuario.fromJson(Map<String, dynamic> json) {
    this.nome = json['nome'];
    this.idade = json['idade'];
    this.email = json['email'];
  }
*/

/* //Construtor com lista de inicialização, define parametros antes de executar  o escopo do  construtor

Usuario.fromJson(Map<String, dynamic> json) 
:   nome = json['nome'],
    idade = json['idade'],
    email = json['email']{
      //configurações iniciais
    }
*/  

//Consttrutor com lista de inicialização, usa this para passar os parametros para o construtor default
Usuario.fromJson(Map<String, dynamic> json) : this(
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
