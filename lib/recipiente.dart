import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/menu.dart';
import 'package:google_fonts/google_fonts.dart';

class Rec extends StatefulWidget {
  const Rec({Key? key}) : super(key: key);
  @override
  State<Rec> createState() => _RecState();
}

class _RecState extends State<Rec> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    var size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(58, 131, 183, 1),
        title: Text('Water Reminder'),
      ),
      body: SingleChildScrollView(
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 50, bottom: 15),
                child: Image(
                  image: AssetImage('assets/cup.png'),
                  height: 150,
                ),
              ),
              Text(
                'Personalizar o recipiente ',
                style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: DropdownMenu<String>(
                  initialSelection: list.first,
                  onSelected: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  dropdownMenuEntries:
                      list.map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(
                        value: value, label: value);
                  }).toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                width: 100,
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
                  onPressed: () {
                    Navigator.pushReplacement<void, void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => Menu(
                          indexPage: 1,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Iniciar',
                    style: GoogleFonts.poppins(),
                  ),
                ),
              ),
              const SizedBox(height: 200),
            ],
          ),
        ),
      ),
    );
  }
}
