import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/menu.dart';
import 'package:google_fonts/google_fonts.dart';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);
  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  int peso = 0;
  int ml = 35;

  get pesoController => null;

  void _calcAgua(int peso, int ml) {
    setState(() {
      calculo = peso * ml;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(58, 131, 183, 1),
        title: Text('Water Reminder'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Image(
                image: AssetImage('assets/cup.png'),
                height: 150,
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  'Descubra seu alvo ',
                  style: GoogleFonts.poppins(
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
                  peso = int.parse(text);
                },
                decoration: InputDecoration(
                  hintText: 'Insira seu peso',
                  hintStyle: GoogleFonts.poppins(),
                  contentPadding: EdgeInsets.all(9.0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Text(
                'Você deve ingerir: ',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                '$calculo' 'ml',
                style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    color: Color.fromRGBO(0, 0, 0, 1)),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: Text(
                  'ao dia',
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                )),
            ElevatedButton(
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
              onPressed: () {
                _calcAgua(peso, ml);
              },
              child: Text(
                'Calcular',
                style: GoogleFonts.poppins(),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 30),
              width: 200,
              child: TextButton(
                child: Text(
                  'Usar este alvo',
                  style: GoogleFonts.poppins(),
                ),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(58, 131, 183, 1)),
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
