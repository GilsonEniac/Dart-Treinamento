class Calculos {
  double pi = 3.14;
  static double piEstatico = 3.14;

  double areaCirculo(double raio) {
    return pi * (raio * raio);
  }

  static double areaCirculoEstatico1(double raio) {
    return piEstatico * (raio * raio);
  }

  static areaCirculoEstatico(double raio) {
    var estatico = print(piEstatico * (raio * raio));
    return estatico;
  }
}
