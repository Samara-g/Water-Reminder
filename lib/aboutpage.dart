import 'package:flutter/material.dart';

void main() {
  runApp(const About(
    title: 'about',
  ));
}

class About extends StatelessWidget {
  const About({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de água',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromRGBO(58, 169, 183, 1)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Water Reminder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  get pesoController => null;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(71, 204, 221, 1),
        title: Text(widget.title,
            style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
      ),
      body: SingleChildScrollView(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                 margin: const EdgeInsets.only(bottom: 10),
              child: Image(
                image: AssetImage('about.png'),
                height: 200,
              ),
            ),
             
               
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 5, left: 10, right: 10),
                child: const Text(
  ' O corpo humano é composto por mais de 70% de água. Ela protege e hidrata as articulações e células, além de transportar nutrientes e auxiliar na eliminação de toxinas. \n\n '
  'Apesar do dito popular de que se é necessário beber 2 litros de água por dia, de acordo com a Organização Mundial da Saúde existe um cálculo baseado no peso de cada pessoa para descobrir a quantidade exata a se consumir.\n\n'
  'Não injerir água suficiente pode causar fraqueza, tontura, dor de cabeça, além de doenças derivadas. Assim como a injestão elevada pode provocar o desequilíbrio na concentração de eletrólitos no sangue, principalmente o sódio(hiponatremia). \n\n'
  'Por isso beber água corretamente é vital para o corpo humano.',
                   style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
           
          ],
        ),
      
      ),
      // This trailing comma makes auto-formaatting nicer for build methods.
    );
  }
}

