import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                Color.fromRGBO(58, 169, 183, 1),
                  Color.fromARGB(210, 130, 236, 210),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
  ),
  );
  }
  }