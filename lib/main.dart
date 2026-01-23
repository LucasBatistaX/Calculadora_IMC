import 'package:calculadora_imc/src/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      //theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/Home",

      routes: {"/Home": (context) => HomePage()},
    );
  }
}
