/**
 Tratamento de Exceções

 - TRY : Usado para testar uma logica.
 - CATCH : Captura erros na logica Try.
 - ON : Captura especificos/conhecidos erros na logica TRY.
 - THROW EXCEPTION : Exceção criada pelo usuario e tratada no CATCH
 - FINALLY : Executado ao final TRY CATCH com exceção ou NÃO! utilizado para liberar recursos na logica TRY.
 
 */
main(){
//Quando voce desconhece a exceção , use a clausula Try Catch
try{
int? resultado = (1 / 0)as int; 
print(resultado);

}catch (e){
print('EXCEÇÃO : $e');
}

}