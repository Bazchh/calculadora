import 'package:calculadora/widgets/ColunaDeResultados.dart';
import 'package:calculadora/widgets/Controladora.dart';
import 'package:calculadora/widgets/BotaoCalculadora.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Calculadora extends StatelessWidget {
  final controladora = Get.put(Controladora());

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: Container(),
                ),
                ColunaDeResultados(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BotaoCalcularadora(
                      botao: 'AC',
                      corDeFundo: Color.fromARGB(255, 72, 221, 26),
                      onPressed: () => controladora.ac(),
                    ),
                    BotaoCalcularadora(
                      botao: 'DEL',
                      corDeFundo: Color.fromARGB(255, 72, 221, 26),
                      onPressed: () => controladora.deletarUltimaEntrada(),
                    ),
                    BotaoCalcularadora(
                      botao: '%',
                      corDeFundo: Color.fromARGB(255, 72, 221, 26),
                      onPressed: () => controladora.selecionarOperacao('%'),
                    ),
                    BotaoCalcularadora(
                      botao: '/',
                      corDeFundo: Color.fromARGB(255, 72, 221, 26),
                      onPressed: () => controladora.selecionarOperacao('/'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BotaoCalcularadora(
                      botao: '7',
                      corDeFundo: Colors.grey,
                      onPressed: () => controladora.adicionarNumero('7'),
                    ),
                    BotaoCalcularadora(
                      botao: '8',
                      corDeFundo: Colors.grey,
                      onPressed: () => controladora.adicionarNumero('8'),
                    ),
                    BotaoCalcularadora(
                      botao: '9',
                      corDeFundo: Colors.grey,
                      onPressed: () => controladora.adicionarNumero('9'),
                    ),
                    BotaoCalcularadora(
                      botao: 'X',
                      corDeFundo: Color.fromARGB(255, 72, 221, 26),
                      onPressed: () => controladora.selecionarOperacao('X'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BotaoCalcularadora(
                      botao: '4',
                      corDeFundo: Colors.grey,
                      onPressed: () => controladora.adicionarNumero('4'),
                    ),
                    BotaoCalcularadora(
                      botao: '5',
                      corDeFundo: Colors.grey,
                      onPressed: () => controladora.adicionarNumero('5'),
                    ),
                    BotaoCalcularadora(
                      botao: '6',
                      corDeFundo: Colors.grey,
                      onPressed: () => controladora.adicionarNumero('6'),
                    ),
                    BotaoCalcularadora(
                      botao: '-',
                      corDeFundo: Color.fromARGB(255, 72, 221, 26),
                      onPressed: () => controladora.selecionarOperacao('-'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BotaoCalcularadora(
                      botao: '1',
                      corDeFundo: Colors.grey,
                      onPressed: () => controladora.adicionarNumero('1'),
                    ),
                    BotaoCalcularadora(
                      botao: '2',
                      corDeFundo: Colors.grey,
                      onPressed: () => controladora.adicionarNumero('2'),
                    ),
                    BotaoCalcularadora(
                      botao: '3',
                      corDeFundo: Colors.grey,
                      onPressed: () => controladora.adicionarNumero('3'),
                    ),
                    BotaoCalcularadora(
                      botao: '+',
                      corDeFundo: Color.fromARGB(255, 72, 221, 26),
                      onPressed: () => controladora.selecionarOperacao('+'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BotaoCalcularadora(
                      botao: 'MK',
                      corDeFundo: Colors.grey,
                      onPressed: () => print('MK'),
                    ),
                    BotaoCalcularadora(
                      botao: '0',
                      corDeFundo: Colors.grey,
                      onPressed: () => controladora.adicionarNumero('0'),
                    ),
                    BotaoCalcularadora(
                      botao: '.',
                      corDeFundo: Colors.grey,
                      onPressed: () => controladora.adicionaPontoDecimal(),
                    ),
                    BotaoCalcularadora(
                      botao: '=',
                      corDeFundo: Color.fromARGB(255, 72, 221, 26),
                      onPressed: () => controladora.calcularResultado(),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
