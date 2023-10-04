import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu.dart';

List<String> list = <String>['100ml', '200ml', '300ml', '400ml'];

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
        backgroundColor: Color.fromRGBO(71, 204, 221, 1),
        title: Text('Water Reminder'),
      ),
      body: SingleChildScrollView(
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 70, bottom: 15),
                child: Image(
                  image: AssetImage('assets/cup.png'),
                  height: 150,
                ),
              ),
              const Text(
                'Personalizar o recipiente ',
                style: TextStyle(
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
                width: 150,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(71, 204, 221, 1)),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 255, 255, 255)),
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
                  child: Text('Iniciar'),
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
