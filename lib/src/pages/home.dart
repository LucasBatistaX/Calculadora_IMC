import 'package:calculadora_imc/layouts/desktop_layout.dart';
import 'package:calculadora_imc/layouts/mobile_layout.dart';
import 'package:calculadora_imc/layouts/tablet_layout.dart';
import 'package:flutter/material.dart';

//Use View.of(context)

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        
        if (constraints.maxWidth < 950) {
          return LayoutMobile();
        } else if (constraints.maxWidth >= 950 && constraints.maxWidth < 1023) {
          return LayoutTablet();
        } else {
          return LayoutDesktop();
        }
      },
    );
  }
}
