import 'dart:convert';
//Regra #1 - Identifique e crie as classes de acordo com Json
//Regra #2 - Crie os COnsstrutores do mais profundo ate a raiz
//Regra #3 - Faça o tratamento de erros

main() {
  Map<String, dynamic> parsedJson = jsonDecode(arquivoJson);
  Pessoa pessoa = Pessoa.fromJson(parsedJson);
  print('DECODE: ${parsedJson}\n');
  print('USO DIRETO :${parsedJson['bens']['veiculos'][0]['multas'][0]['descrisao']}\n');
  print('USO OBJETO : ${pessoa.filhos.map((e) => e.nome == 'Chloe')}\n');

//ENCODE
  Map<String, dynamic> map = pessoa.toJson();

  //String ArqJson = jsonEncode(map);

  //print(ArqJson);
} //fim main

class Pessoa {
  String nome;
  int idade;
  Parente parentes;
  List<String> tarefas;
  Conjuge conjuge;
  List<Filho> filhos;
  Bens bens;

  Pessoa({this.nome, this.idade, this.parentes, this.tarefas, this.conjuge, this.filhos, this.bens});

  Pessoa.fromJson(Map<String, dynamic> json)
      : this(
          nome: json['nome'],
          idade: json['idade'],
          parentes: Parente.fromJson(json['parentes']),
          tarefas: List<String>.from(json['tarefas']), //json['tarefas'].cast<String>(),
          conjuge: Conjuge.fromJson(json['conjuge']),
          filhos: (json['filhos'] as List<dynamic>).map((e) => Filho.fromJson(e)).toList(),
          bens: Bens.fromJson(json['bens']),
        );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'parentes': parentes,
      'tarefas': tarefas,
      'conjuge': conjuge,
      'filhos': filhos,
      'bens': bens,
    };
  }
} //fim da classe Pessoa

class Parente {
  String mae;
  String pai;

  Parente({this.mae, this.pai});
  Parente.fromJson(Map<String, dynamic> json)
      : this(
          mae: json['mae'],
          pai: json['pai'],
        );

  Map<String, dynamic> toJson() {
    return {
      'mae': mae,
      'pai': pai,
    };
  }
}

class Conjuge {
  String nome;
  int idade;
  Parente parentes;

  Conjuge({this.nome, this.idade, this.parentes});

  Conjuge.fromJson(Map<String, dynamic> json)
      : this(
          nome: json['nome'],
          idade: json['idade'],
          parentes: Parente.fromJson(json['parentes']),
        );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'parentes': parentes,
    };
  }
} //fima classe Conjuge

class Filho {
  String nome;
  int idade;
  List<String> vacinas;

  Filho({this.nome, this.idade, this.vacinas});

  Filho.fromJson(Map<String, dynamic> json)
      : this(
          nome: json['nome'],
          idade: json['idade'],
          vacinas: List<String>.from(json['vacinas']), //json['vacinas'].as cast String(),
        );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'vacinas': vacinas,
    };
  }
} //fim claasse filho

class Bens {
  List<Veiculo> veiculos;
  List<Imovel> imoveis;

  Bens({this.veiculos, this.imoveis});

  Bens.fromJson(Map<String, dynamic> json)
      : this(
          veiculos: (json['veiculos'] as List<dynamic>).map((e) => Veiculo.fromJson(e)).toList(),
          imoveis: (json['imoveis'] as List<dynamic>).map((e) => Imovel.fromJson(e)).toList(),
        );

  Map<String, dynamic> toJson() {
    return {
      'veiculos': veiculos,
      'imoveis': imoveis,
    };
  }
} //fim classe Bens

class Veiculo {
  String marca;
  String modelo;
  Caracteristica caracteristicas;
  List<Multa> multas;

  Veiculo({this.marca, this.modelo, this.caracteristicas, this.multas});

  Veiculo.fromJson(Map<String, dynamic> json)
      : this(
          marca: json['marca'],
          modelo: json['modelo'],
          caracteristicas: Caracteristica.fromJson(json['caracteristicas']),
          multas: (json['multas'] as List).map((e) => Multa.fromJson(e)).toList(),
        );

  Map<String, dynamic> toJson() {
    return {
      'marca': marca,
      'modelo': modelo,
      'caracteristicas': caracteristicas,
      'multas': multas,
    };
  }
} //fim classe Veiculo

class Caracteristica {
  String tipo;
  String passageiro;

  Caracteristica({this.tipo, this.passageiro});

  Caracteristica.fromJson(Map<String, dynamic> json)
      : this(
          tipo: json['tipo'],
          passageiro: json['passageiro'],
        );

  Map<String, dynamic> toJson() {
    return {'tipo': tipo, 'passageiro': passageiro};
  }
} //fim classe Caracteristicas

class Multa {
  String descrisao;
  String tipo;
  int pontos;

  Multa({this.descrisao, this.tipo, this.pontos});

  Multa.fromJson(Map<String, dynamic> json)
      : this(
          descrisao: json['descricao'],
          tipo: json['tipo'],
          pontos: json['pontos'],
        );

  Map<String, dynamic> toJson() {
    return {
      'descricao': descrisao,
      'tipo': tipo,
      'pontos': pontos,
    };
  }
} //fim classe multa

class Imovel {
  String tipo;
  String endereco;
  List<Conta> contas;

  Imovel({this.tipo, this.endereco, this.contas});

  Imovel.fromJson(Map<String, dynamic> json)
      : this(
          tipo: json['tipo'],
          endereco: json['endereco'],
          contas: (json['contas'] as List<dynamic>).map((e) => Conta.fromJson(e)).toList(),
        );

  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'endereco': endereco,
      'contas': contas,
    };
  }
} //fim classe imovel

class Conta {
  String tipo;
  int valor;

  Conta({this.tipo, this.valor});

  Conta.fromJson(Map<String, dynamic> json)
      : this(
          tipo: json['tipo'],
          valor: json['valor'],
        );

  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'valor': valor,
    };
  }
} //fim classe Conta

String arquivoJson = '''{
    "nome" : "Fernando", 
    "idade": 36, 
    "parentes": {
      "mae": "Marlene",
      "pai": "Delcio"
    },
    "tarefas": [
      "Pagar contas",
      "Estudar"
    ],
    "conjuge": {
      "nome" : "Leila", 
      "idade": 31,
      "parentes": {
        "mae": "Lindraci",
        "pai": "Pedro"
      }
    },
    "filhos" : [      
      {
        "nome" : "Chloe", 
        "idade": 1, 
        "vacinas": [
          "ACWY",
          "Sarampo"
        ]
      },
      {
        "nome" : "Bartolomeu", 
        "idade": 5, 
        "vacinas": [
          "ACWY",
          "Sarampo",
          "Meningite"
        ]
      }
    ],
    "bens": {
      "veiculos": [
        {
          "marca": "Maverick",
          "modelo": "Ford",
          "caracteristicas": {
            "tipo": "passeio",
            "passageiros": 5
          },
          "multas": [
            {
              "descrisao": "Excesso Velocidade",
              "tipo": "Gravissima",
              "pontos": 7
            },
            {
              "descrisao": "Estacionar Local Proibido",
              "tipo": "Grave",
              "pontos": 4
            }
          ]
        },
        {
          "marca": "Kawasaki",
          "modelo": "Ninja H2R",
          "caracteristicas": {
            "tipo": "corrida",
            "passageiros": 2
          },
          "multas": [
            {
              "descrisao": "Excesso Velocidade",
              "tipo": "Gravissima",
              "pontos": 7
            },
            {
              "descrisao": "Excesso Velocidade",
              "tipo": "Gravissima",
              "pontos": 7
            },
            {
              "descrisao": "Excesso Velocidade",
              "tipo": "Gravissima",
              "pontos": 7
            }
          ]
        }
      ],
      "imoveis": [
        {
          "tipo": "casa",
          "endereco": "Rua dos tolos, 0, Vila do Chaves",
          "contas": [
            {
              "tipo": "IPTU",
              "valor": 1000
            },
            {
              "tipo": "Condominio",
              "valor": 500
            }
          ]
        }
      ]
    }
  }
 ''';
