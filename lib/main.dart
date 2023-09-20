import 'package:flutter/material.dart';
import 'package:flutter_application_1/seg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de água',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 58, 169, 183)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Water Reminder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _calculo = 0.0;
  double peso = 0.0;
  double ml = 35.0;

  get pesoController => null;

  void _calcAgua(double peso, double ml) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _calculo = peso * ml;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Align(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Descubra seu alvo ',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w400,
              ),
            ),
            new TextField(
              onChanged: (text) {
                peso = double.parse(text);
              },
              decoration: InputDecoration(
                hintText: 'Insira seu peso',
                contentPadding: EdgeInsets.all(9.0),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
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
            const Text('ml/dia'),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 235, 236, 237)),
              ),
              onPressed: () {
                _calcAgua(peso, ml);
              },
              child: Text('Calcular'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32),
              width: 200,
              child: TextButton(
                child: Text('Usar este alvo'),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 9, 97, 185)),
                ),
                onPressed: () {
                  Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const AuthPage(title: "home"),
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
