import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:flutter/material.dart';

enum EnumClassificacao {
  magreza("Baixo Peso", AppColors.lowWeight),
  normal("Normal", AppColors.normalWeight),
  sobrepeso("Sobrepeso", AppColors.overWeight),
  obesidade("Obesidade", AppColors.heightWeight);

  const EnumClassificacao(this.message, this.color);

  final String message;
  final Color color;
}
