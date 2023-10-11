import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  get pesoController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 252, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(113, 188, 242, 1),
        title: Text('Water Reminder'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 500,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(58, 131, 183, 1),
                  Color.fromARGB(210, 130, 204, 236),
                ],
              )),
              margin: const EdgeInsets.only(bottom: 10),
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: Image(
                  image: AssetImage('assets/aboutss.png'),
                  height: 200,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(
                    top: 15, left: 10, right: 10, bottom: 20),
                child: Text(
                  ' O corpo humano é composto por mais de 70% de água. Ela protege e hidrata as articulações e células, além de transportar nutrientes e auxiliar na eliminação de toxinas. \n\n '
                  'Apesar do dito popular de que se é necessário beber 2 litros de água por dia, de acordo com a Organização Mundial da Saúde existe um cálculo baseado no peso de cada pessoa para descobrir a quantidade exata a se consumir.\n\n'
                  'Não injerir água suficiente pode causar fraqueza, tontura, dor de cabeça, além de doenças derivadas. Assim como a injestão elevada pode provocar o desequilíbrio na concentração de eletrólitos no sangue, principalmente o sódio(hiponatremia). \n\n'
                  'Por isso beber água corretamente é vital para o corpo humano.',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
                width: 500,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(58, 131, 183, 1),
                    Color.fromARGB(210, 130, 204, 236),
                  ],
                )),
                margin: const EdgeInsets.only(top: 10, bottom: 20),
                child: Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    'QUER UMA DICA?',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                )),
            Container(
                margin: const EdgeInsets.only(left: 10),
                width: 400,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'lalala',
                      style: GoogleFonts.poppins(fontSize: 15),
                    )
                  ],
                ))
          ],
        ),
      ),
      // This trailing comma makes auto-formaatting nicer for build methods.
    );
  }
}
