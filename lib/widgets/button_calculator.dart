import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:calculadora_imc/utils/app_text_style.dart';
import 'package:calculadora_imc/widgets/result_dialog.dart';
import 'package:flutter/material.dart';

class ButtonCalculator extends StatefulWidget {
  const ButtonCalculator({super.key});

  @override
  State<ButtonCalculator> createState() => _ButtonCalculatorState();
}

class _ButtonCalculatorState extends State<ButtonCalculator> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return ResultDialog();
          },
        );
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.s10),
          gradient: LinearGradient(
            colors: [AppColors.beginColor, AppColors.endColor],
            begin: AlignmentGeometry.centerLeft,
            end: AlignmentGeometry.centerRight,
          ),
        ),
        height: AppSizes.s56,
        child: Center(
          child: Text("Calcular IMC", style: AppTextStyle.textButtonData),
        ),
      ),
    );
  }
}


