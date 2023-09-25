import 'package:flutter/material.dart';
import 'package:flutter_application_1/index.dart';
import 'package:flutter_application_1/seg.dart';

void main() {
  runApp(const Seg(title: 'seg',));
}

class Seg extends StatelessWidget {
  const Seg({Key? key, required String title}):super(key: key);

 
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
              'Personalizar o recipiente ',
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
                  hintText: 'ml',
                  contentPadding: EdgeInsets.all(9.0),

               
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top:50),
              width: 150,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(71, 204, 221, 1)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 255, 255)),
                     
                ),
                
                onPressed: () {
                   Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const Welcome(title: "seg"),
                    ),
                  );
                },
                child: Text('Iniciar'),
                
              ),
            ), const SizedBox(height: 200),
           /*   Container(
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
                          const AuthPage(title: "home"),
                    ),
                  );
                },
              ),
            )*/
          ],
        ),
      ),
      // This trailing comma makes auto-formaatting nicer for build methods.
    );
  }
}
