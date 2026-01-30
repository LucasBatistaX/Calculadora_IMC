import 'package:calculadora_imc/layouts/desktop_layout.dart';
import 'package:calculadora_imc/layouts/mobile_layout.dart';
import 'package:calculadora_imc/layouts/tablet_layout.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
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
        if (constraints.maxWidth <= AppSizes.breakPointMobile) {
          return LayoutMobile();
        } else if (constraints.maxWidth > AppSizes.breakPointMobile &&
            constraints.maxWidth < AppSizes.breakPointDesktop) {
          return LayoutTablet();
        } else {
          return LayoutDesktop(); // Mostra quando nenhuma se enquadra
        }
      },
    );
  }
}
