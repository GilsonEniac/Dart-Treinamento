/**
 Tratamento de Exceções

 - TRY : Usado para testar uma logica.
 - CATCH : Captura erros na logica Try.
 - ON : Captura especificos/conhecidos erros na logica TRY.
 - THROW EXCEPTION : Exceção criada pelo usuario e tratada no CATCH
 - FINALLY : Executado ao final TRY CATCH com exceção ou NÃO! utilizado para liberar recursos na logica TRY.
 
 */

main() {
  try {
    int valorA = 1, valorB = 0;
    double resultado = (valorA / valorB);

    if (resultado.isInfinite) throw Exception('A varialve valorB deve ser != 0');
    print(resultado);
  } catch (e) {
    print('EXCEÇÃO: $e');
  }
}
