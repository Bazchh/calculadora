import 'package:calculadora/widgets/Calculadora.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Desafio calculadora",
      home: Calculadora(),
      theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black),
    );
  }
}
