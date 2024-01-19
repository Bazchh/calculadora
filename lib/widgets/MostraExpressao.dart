import 'package:flutter/material.dart';

class MostraExpressao extends StatelessWidget {
  final String expressao;

  MostraExpressao({Key? key, required this.expressao});

  @override
  Widget build(BuildContext context) {
    final estiloBotao = TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.w300,
    );

    return Container(
        width: double.infinity,
        alignment: Alignment.centerRight,
        child: Text(
          this.expressao,
          style: estiloBotao,
        ));
  }
}
