import '4-Candidato.dart';

main() {
  Candidato minio = new Candidato('Minios', ideologia: 'Direita', partido: 'PSL');

  minio.objetivo = 'Ganhar as eleições';
  minio.objetivosPessoais();
  minio.postagem = 'Combater a corrupção no Brasil';
  minio.escreverPostagem();
  minio.ideologiaPolitica();
}
