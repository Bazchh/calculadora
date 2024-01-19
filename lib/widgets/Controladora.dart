// ignore_for_file: curly_braces_in_flow_control_structures, prefer_interpolation_to_compose_strings, constant_pattern_never_matches_value_type

import 'package:get/get.dart';

class Controladora {
  var primeiroNumero = '1'.obs;
  var segundoNumero = '2'.obs;
  var resultado = '3'.obs;
  var operacao = '+'.obs;

  ac(){
  primeiroNumero.value = "0";
  segundoNumero.value = '0';
  resultado.value = '0';
  operacao.value = '+';
  }

  adicionarNumero(String numero){
    if(resultado.value == '0')
    return resultado.value = numero;
    if(resultado.value == '-0')
    return resultado.value = '-' + numero;

    resultado.value = resultado.value + numero;
  }

  adicionaPontoDecimal(){
    if(resultado.value.contains('.')) return;

    if(resultado.value.startsWith('0')){
      resultado.value = '0.';
    } else {
      resultado.value = resultado.value + '.';
    }
  }

  selecionarOperacao(String novaOperacao){
    operacao.value = novaOperacao;
    primeiroNumero.value = resultado.value;
    resultado.value = '0';
  }

  deletarUltimaEntrada (){
    if(resultado.value.replaceAll('-', '').length > 1){
      resultado.value = resultado.value.substring(0, resultado.value.length -1);

    } else {
      resultado.value = '0';
    }
  }

  calcularResultado(){
    double num1 = double.parse(primeiroNumero.value);
    double num2 = double.parse(resultado.value);
    segundoNumero.value = resultado.value;

    switch (operacao){
      case '+':
      resultado.value = '${num1 + num2}';
      break;
      case '-':
      resultado.value = '${num1 - num2}';
      break;
      case '/': 
      resultado.value = '${num1 / num2}';
      break;
      case 'X':
      resultado.value = '${num1 * num2}';
      break;
      case '%':
      resultado.value = '${num1 % num2}';
      break;
      default:
      return;
    }

    if(resultado.value.endsWith('.0')){
      resultado.value = resultado.value.substring(0,resultado.value.length - 2);
    }

  }

}