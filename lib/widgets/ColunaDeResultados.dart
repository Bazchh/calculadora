import 'package:calculadora/widgets/Controladora.dart';
import 'package:calculadora/widgets/Linha.dart';
import 'package:calculadora/widgets/MostraExpressao.dart';
import 'package:calculadora/widgets/MostraResultado.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColunaDeResultados extends StatelessWidget {
  
  final controladora = Get.find<Controladora>();

  @override
  Widget build(BuildContext context) {
    
    return Obx( 
      () => Column(
        children: [
          MostraExpressao( expressao: '${ controladora.primeiroNumero }' ),
          MostraExpressao( expressao: '${ controladora.operacao }' ),
          MostraExpressao( expressao: '${ controladora.segundoNumero }' ),
          Linha(),
          MostraResultado( resultado: '${ controladora.resultado }' ),
        ],
    ));
  }
}