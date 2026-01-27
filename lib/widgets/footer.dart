import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TextFooter extends StatelessWidget {
  const TextFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Desenvolvido por",
            style: TextStyle(color: AppColors.textColor),
          ),
          TextSpan(
            text: " Lucas Batista",
            style: TextStyle(color: AppColors.beginColor),
          ),
          TextSpan(
            text: " utilizando",
            style: TextStyle(color: AppColors.textColor),
          ),
          TextSpan(
            text: " Flutter",
            style: TextStyle(color: AppColors.endColor),
          ),
          TextSpan(
            text: ".",
            style: TextStyle(color: AppColors.textColor),
          ),
        ],
      ),
    );
  }
}