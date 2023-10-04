import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutpage.dart';

void main() {
  runApp(const Home(
    title: 'home',
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key, required String title}) : super(key: key);

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
  bool checkboxValue1 = false;
  bool checkboxValue2 = false;
  bool checkboxValue3 = false;

  get pesoController => null;
  

  void _calcAgua(double peso, double ml) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var size;
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
            Image(
              image: AssetImage('gota.png'),
              height: 150,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  'Seu alvo é: ',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Text(
            'teste',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            CheckboxListTile(
              value: checkboxValue1,
              onChanged: (bool? value) {
                setState(() {
                  checkboxValue1 = value!;
                });
              },
              title: const Text('Concluído'),
            ),
            const Divider(height: 0),
            CheckboxListTile(
              value: checkboxValue2,
              onChanged: (bool? value) {
                setState(() {
                  checkboxValue2 = value!;
                });
              },
              title: const Text('Concluído'),
            ),
            const Divider(height: 0),
            CheckboxListTile(
              value: checkboxValue3,
              onChanged: (bool? value) {
                setState(() {
                  checkboxValue3 = value!;
                });
              },
              title: const Text('Concluído'),
            ),
            const Divider(height: 0),
            IconButton(
          icon: const Icon(Icons.water_drop_outlined),
          tooltip: 'about',
          onPressed: () {
            setState(() {
               Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const About(title: "about"),
                    ),
                  );
            });
          },
        ),
          ],
        ),
       
      ),
      // This trailing comma makes auto-formaatting nicer for build methods.
    );
  }
}

