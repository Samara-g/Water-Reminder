import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculadora.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de água',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromRGBO(58, 169, 183, 1)),
      ),
      home: const Calc(),
      debugShowCheckedModeBanner: false,
    );
  }
}
