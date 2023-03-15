import '1-Animal.dart';
class Acropodes extends Animal{
 
  
  String caracteristicas;
  
  
  Acropodes.insetos(String idade, bool docil) :super.invertebrados(idade, docil: docil){
      this.caracteristicas='Voam';
  }
  Acropodes.aracnideos(String idade, bool docil ) :super.invertebrados(idade, docil: docil){
    this.caracteristicas ='Tem oito pernas';
  }
  Acropodes.crustacios(String idade, bool docil) :super.invertebrados(idade, docil: docil){
    this.caracteristicas ="Possuem conchas";
  }
  


  
  @override
  void reproduzir() {
    print('Postulam muitos ovos em uma unica vez');
  }


  }
  
  
  
  
  
  
  
  
 




