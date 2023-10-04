import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutpage.dart';
import 'package:flutter_application_1/calculadora.dart';
import 'package:flutter_application_1/lembrete.dart';
import 'package:flutter_application_1/recipiente.dart';

class Menu extends StatefulWidget {
  int indexPage;

  Menu({this.indexPage = 0, Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class Water extends StatelessWidget {
  const Water({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Menu();
  }
}

class _MenuState extends State<Menu> {
  int _opcaoSelecionada = 0;

  PaginaSelecionada(int i) {
    switch (i) {
      case 0:
        return Calc();
      case 1:
        return Lembrete();
      case 2:
        return About();
      case 3:
        return Rec();
    }
  }

  int ReturnOpcaoSelecionada() {
    switch (_opcaoSelecionada) {
      case 3:
        return 0;
      default:
        return _opcaoSelecionada;
    }
  }

  @override
  void initState() {
    setState(() {
      _opcaoSelecionada = widget.indexPage;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaginaSelecionada(_opcaoSelecionada),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: ReturnOpcaoSelecionada(),
          unselectedItemColor: Color.fromRGBO(255, 255, 255, 0.969),
          selectedItemColor: Color.fromRGBO(0, 158, 164, 0.98),
          backgroundColor: Color.fromRGBO(71, 204, 221, 1),
          onTap: (opcao) {
            //  print("clicou $opcao");

            setState(() {
              _opcaoSelecionada = opcao;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate_outlined),
              label: 'Calcular',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.water_drop_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help),
              label: 'Sobre',
            ),
          ]),
    );
  }
}
