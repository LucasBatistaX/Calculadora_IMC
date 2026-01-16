import 'package:calculadora_imc/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  const Subtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Calculadora de IMC", style: AppTextStyle.subTitle);
  }
}