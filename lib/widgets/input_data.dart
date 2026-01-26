import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:calculadora_imc/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class InputData extends StatelessWidget {
  const InputData({
    super.key,
    required this.label,
    required this.icon,
    required this.angleIcon
  });

  final String label;
  final IconData icon;
  final double angleIcon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.s10),
          ),
          labelStyle: TextStyle(color: AppColors.subtitleColor),
          labelText: label,
          prefixIcon: Transform.rotate(
            angle: angleIcon,
            child: Icon(
              icon,
              color: AppColors.endColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.subtitleColor,
            ),
            borderRadius: BorderRadius.circular(AppSizes.s10),
          ),
        ),
        style: AppTextStyle.textInput,
        keyboardType: TextInputType.number,
      ),
    );
  }
}