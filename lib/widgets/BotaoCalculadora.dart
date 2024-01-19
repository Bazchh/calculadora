import 'package:flutter/material.dart';

class BotaoCalcularadora extends StatelessWidget {
  final String botao;
  final Color corDeFundo;

  final Function onPressed;

  const BotaoCalcularadora(String s,
      {super.key, required this.botao, corDeFundo, required this.onPressed})
      : this.corDeFundo = corDeFundo ?? const Color(0xff333333);

  @override
  Widget build(BuildContext context) {
    final estiloBotao = TextButton.styleFrom(
      backgroundColor: corDeFundo,
      foregroundColor: Colors.white,
      shape: StadiumBorder(),
    );

    return Container(
      margin: EdgeInsets.only(),
      child: TextButton(
        style: estiloBotao,
        child: Container(
          width: 150,
          height: 65,
          child: Center(
            child: Text(
            this.botao,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
          )),
        ),
        onPressed: () => onPressed,
      ),
    );
  }
}
