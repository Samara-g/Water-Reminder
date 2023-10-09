//calculadora
import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculadora.dart';

int calculo = 0;
//recipiente
List<String> list = <String>['100ml', '200ml', '300ml', '400ml'];
initialSelection(int i) {
  switch (i) {
    case 0:
      return 100;
    case 1:
      return 200;
    case 2:
      return 300;
    case 3:
      return 400;
  }
}

//checkbox
class CalcRec extends State<Calc> {
  int s = i;
  int ml = 0;

  get pesoController => null;
  
  static int get i => i;

  void _calcAgua(int peso, int ml) {
    setState(() {
      calculo = peso * ml;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
