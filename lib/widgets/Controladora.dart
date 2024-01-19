 import 'package:get/get.dart';

class Controladora{
var primeiroNumero  = '10'.obs;
  var segundoNumero = '20'.obs;
  var resultado     = '30'.obs;
  var operacao      = '+'.obs;


  ac() {
    primeiroNumero.value  = '0';
    segundoNumero.value = '0';
    resultado.value   = '0';
    operacao.value    = '+';
  }

  

  adicionarNumero( String number ) {

    if ( resultado.value == '0' ) 
      return resultado.value = number;

    if ( resultado.value == '-0' ){
      return resultado.value = '-' + number;
    }
    
    resultado.value = resultado.value + number;

  }

  adicionaPontoDecimal() {

    if ( resultado.contains('.') ) return;

    if ( resultado.startsWith('0') ){
      resultado.value = '0.';
    } else {
      resultado.value = resultado.value + '.';
    }

  }

  selecionarOperacao( String newOperation ) {

    operacao.value   = newOperation;
    primeiroNumero.value = resultado.value;
    resultado.value  = '0';

  }

 deletarUltimaEntrada() {

    if ( resultado.value.replaceAll('-', '').length > 1 ) {
      resultado.value = resultado.value.substring(0, resultado.value.length - 1 );
    } else {
      resultado.value = '0';
    }

  }

  calcularResultado() {

    double num1 = double.parse( primeiroNumero.value );
    double num2 = double.parse( resultado.value );

    segundoNumero.value = resultado.value;

    switch( operacao.value ){

      case '+':
        resultado.value = '${ num1 + num2 }';
      break;

      case '-':
        resultado.value = '${ num1 - num2 }';
      break;

      case '/':
        resultado.value = '${ num1 / num2 }';
      break;

      case 'X':
        resultado.value = '${ num1 * num2 }';
      break;

      default:
        return;
    }

    if ( resultado.value.endsWith('.0') ) {
      resultado.value = resultado.value.substring(0, resultado.value.length - 2 );
    }

  }


}