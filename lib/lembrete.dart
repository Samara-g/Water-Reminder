import 'package:flutter/material.dart';

class Lembrete extends StatefulWidget {
  const Lembrete({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LembreteState();
}

class _LembreteState extends State<Lembrete> {
  bool checkboxValue1 = false;
  bool checkboxValue2 = false;
  bool checkboxValue3 = false;

  @override
  Widget build(BuildContext context) {
    var size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(71, 204, 221, 1),
        title: Text('Water Reminder'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Image(
                image: AssetImage('assets/gota.png'),
                height: 150,
              ),
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
          ],
        ),
      ),
      // This trailing comma makes auto-formaatting nicer for build methods.
    );
  }
}
