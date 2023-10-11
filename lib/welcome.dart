import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
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
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromRGBO(249, 252, 255, 1),
            Color.fromARGB(210, 130, 204, 236),
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Water Reminder',
                style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            Container(
              child: Center(
                child: Image(
                  image: AssetImage('assets/teste.png'),
                  height: 200,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 35,
              width: 120,
              child: ElevatedButton(
                style: ButtonStyle(
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(58, 131, 183, 1)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 255, 255)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),

                /*style: ButtonStyle(
                  
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(255, 255, 255, 1)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 0, 113, 121)),
                ),*/
                onPressed: () {
                  Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => Menu(),
                    ),
                  );
                },
                child: Text(
                  'Entrar',
                  style: GoogleFonts.poppins(),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
      // This trailing comma makes auto-formaatting nicer for build methods.
    );
  }
}
