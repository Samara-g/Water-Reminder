import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu.dart';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);
  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  double _calculo = 0.0;
  double peso = 0.0;
  double ml = 35.0;

  get pesoController => null;

  void _calcAgua(double peso, double ml) {
    setState(() {
      _calculo = peso * ml;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(71, 204, 221, 1),
        title: Text('Water Reminder'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 70),
              child: Image(
                image: AssetImage('assets/cup.png'),
                height: 150,
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  'Descubra seu alvo ',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              width: 300,
              child: new TextField(
                onChanged: (text) {
                  peso = double.parse(text);
                },
                decoration: InputDecoration(
                  hintText: 'Insira seu peso',
                  contentPadding: EdgeInsets.all(9.0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text(
                'Você deve ingerir: ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Text(
              '$_calculo',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: const Text(
                  'ml/dia',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(71, 204, 221, 1)),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 255, 255, 255)),
              ),
              onPressed: () {
                _calcAgua(peso, ml);
              },
              child: Text('Calcular'),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 60),
              width: 200,
              child: TextButton(
                child: Text('Usar este alvo'),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(2, 178, 201, 1)),
                ),
                onPressed: () {
                  Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => Menu(indexPage: 3),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formaatting nicer for build methods.
    );
  }
}
