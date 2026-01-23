import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  // Style title
  static const TextStyle titleStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: AppSizes.s60,
    shadows: [
      BoxShadow(color: Colors.white, spreadRadius: 5, offset: Offset(1, 0)),
    ],
  );

  //Style Subtitle
  static const TextStyle subTitle = TextStyle(
    color: AppColors.subtitleColor,
    fontSize: AppSizes.s20,
  );
}
