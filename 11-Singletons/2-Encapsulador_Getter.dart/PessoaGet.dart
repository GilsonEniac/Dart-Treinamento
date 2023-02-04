class PessoaGet {
  static final PessoaGet _instancia = PessoaGet._construtorNomeado();
  String? nome;

  PessoaGet._construtorNomeado();

  static PessoaGet get instancia {
    return _instancia;
  }
}
