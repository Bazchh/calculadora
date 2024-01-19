import 'package:flutter/material.dart';

class MostraExpressao extends StatelessWidget {
  final String expressao;

  const MostraExpressao({Key? key, required this.expressao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        alignment: Alignment.centerRight,
        child: Text(this.expressao, style: TextStyle(fontSize: 30)));
  }
}
