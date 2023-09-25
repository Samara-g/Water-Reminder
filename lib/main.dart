import 'package:flutter/material.dart';
import 'package:flutter_application_1/seg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);

 
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
       
        title: Text(widget.title,
        style: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1)
          )
          ),
      ),
      body: Align(
     
      
        child: Column(
       
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            
             Image(
                  image: AssetImage('assets/cup.png'),
               height: 200,
                ),
            const Text(
              'Descubra seu alvo ',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w400,
                
              ),
            ),
           
            Container(
              width:300,
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
            Container(
              child: const Text('ml/dia', 
              style: TextStyle(
                 fontSize: 17,
                  fontWeight: FontWeight.w400,
              ),)
              ),
    
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(71, 204, 221, 1)),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 255, 255, 255)),
                   
              ),
              
              onPressed: () {
                _calcAgua(peso, ml);
              },
              child: Text('Calcular'),
              
            ), const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
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
                      builder: (BuildContext context) =>
                          const Seg(title: "seg"),
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
