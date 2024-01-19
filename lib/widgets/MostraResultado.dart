import 'package:flutter/material.dart';

class MostraResultado extends StatelessWidget {
  final String resultado;

  const MostraResultado({Key? key, required this.resultado}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: FittedBox(
        fit: BoxFit
            .contain, //Se a quantidade de digitos passar a tela ela diminui os digitos para caber na tela
        child: Text(this.resultado, style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
