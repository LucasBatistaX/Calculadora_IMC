import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:calculadora_imc/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class ButtonCalculator extends StatelessWidget {
  const ButtonCalculator({
    super.key,
    required this.titulo,
    required this.onPressed,
  });

  final String titulo;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSizes.s56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.s10),
        gradient: LinearGradient(
          colors: [AppColors.beginColor, AppColors.endColor],
          begin: AlignmentGeometry.centerLeft,
          end: AlignmentGeometry.centerRight,
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(titulo, style: AppTextStyle.textButtonData),
      ),
    );
  }
}
