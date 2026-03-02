import 'package:calculadora_imc/enum/enum_classificacao.dart';
import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:flutter/material.dart';

extension ImcClassificacaoUI on EnumClassificacao {
  Color get color {
    switch (this) {
      case EnumClassificacao.magreza:
        return AppColors.lowWeight;
      case EnumClassificacao.normal:
        return AppColors.normalWeight;
      case EnumClassificacao.sobrepeso:
        return AppColors.overWeight;
      case EnumClassificacao.obesidade:
        return AppColors.heightWeight;
    }
  }
}
