

void main(){
 /*  print('(03.1 Condicionais IF e ELSE)');

  if(!true){
    print('Verdadeiro');
  }
  else{
    print('Falso');
  }
print('');

/////////////////////////////////////////////
int idade = 17;

if(idade >=18) {// se if tiver somentee uma linha pode usar sem chaves
  print('Maior');
  print('Maior2');
}
 else{
  print('Menor');
  print('Meno2');
}
//////////////////////////////////////////
 */
/* int idade = 17;

if(idade < 14){
  print('Crinaça');
} else if(/* idade < 18 */idade >=14 && idade <=18 ){
  print('Adolesente');
} else{
  print('Adulto');
}
 */

/* String textoInt = '10';
String textoDouble = '10.123456';
int numeroInt = int.parse(textoInt);
var numeroDouble = double.parse(textoDouble).toStringAsFixed(2);
print('ParseInt : $numeroInt, ParseDouble: $numeroDouble');
print('ParseString ${numeroDouble.toString() is String}');/*  */
 */

double peso = 65;
double altura = 1.83;
var tmp = peso / (altura * altura);
double imc = double.parse(tmp.toStringAsFixed(2));

print(imc);



if (imc < 18.5) 
  print('IMC:$imc abaixo do peso');
else if (imc > 18.5 && imc < 25 )
  print('IMC:$imc peso normal');
else if (imc > 25 && imc < 30)
  print('IMC:$imc sobrepeso');
else if (imc > 30 && imc < 35)
  print('IMC:$imc Obesidade grau 1');
else if (imc >35 && imc < 40)
  print('IMC:$imc Obesidade grau 2');
else print('IMC:$imc Obesidade grau 3');  
 
 
 







}