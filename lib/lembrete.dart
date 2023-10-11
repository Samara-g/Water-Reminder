import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
import 'package:google_fonts/google_fonts.dart';

class Lembrete extends StatefulWidget {
  const Lembrete({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LembreteState();
}

class _LembreteState extends State<Lembrete> {
  List<bool> checkBoxList = List.empty(growable: true);

  @override
  void initState() {
    checkBoxList = List.empty(growable: true);
    for (var i = 0; i < calcRec(); i++) {
      checkBoxList.add(false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 252, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(58, 131, 183, 1),
        title: Text('Water Reminder'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: Image(
                image: AssetImage('assets/gota.png'),
                height: 90,
              ),
            ),
            Center(
              child: Container(
                child: Text(
                  'Seu alvo é: ',
                  style: GoogleFonts.poppins(
                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                  ),
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
                    color: Color.fromRGBO(58, 131, 183, 1)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                  children: checkBoxList
                      .map((checkbox) => Column(
                            children: [
                              CheckboxListTile(
                                value: checkbox,
                                onChanged: (bool? value) {
                                  setState(() {
                                    checkbox = value!;
                                  });
                                },
                                title: Text(
                                    checkbox ? "Concluído" : "${mlSelected}ml"),
                              ),
                              const Divider(height: 0),
                            ],
                          ))
                      .toList()),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formaatting nicer for build methods.
    );
  }
}
