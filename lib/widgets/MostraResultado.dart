import 'package:flutter/material.dart';

class MostraResultado extends StatelessWidget {
  final String resultado;

  MostraResultado({required this.resultado});

  @override
  Widget build(BuildContext context) {
    final estiloBotao = TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.w300,
    );

    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      alignment: Alignment.centerRight,
      child: FittedBox(
        fit: BoxFit.contain, //Se a quantidade de digitos passar a tela ela diminui os digitos para caber na tela
        child: Text(
          this.resultado,
          style: estiloBotao,
        ),
      ),
    );
  }
}
