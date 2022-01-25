import 'package:flutter/material.dart';
import 'dart:math';

class Dados extends StatefulWidget {
  const Dados({Key? key}) : super(key: key);

  @override
  _DadosState createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  int numeroDadoEsquerdo = 1;
  int numeroDadoDireito = 1;

  void random() {
    setState(() {
      numeroDadoEsquerdo = Random().nextInt(6) + 1;
      numeroDadoDireito = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                random();
              },
              child: Image.asset('assets/images/dado$numeroDadoEsquerdo.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                random();
              },
              child: Image.asset('assets/images/dado$numeroDadoDireito.png'),
            ),
          )
        ],
      ),
    );
  }
}
