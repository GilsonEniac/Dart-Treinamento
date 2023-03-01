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
    double resultado = (-1 / 0) ;
    print(resultado);
  } on UnsupportedError {
    print('Exceçâo : Não é possivel dividit por zerro!');
  } catch (e) {
    print('EXCEÇÃO: $e');
  }
}
