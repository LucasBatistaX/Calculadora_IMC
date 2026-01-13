import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class FlutterFit extends StatelessWidget {
  FlutterFit({super.key});

  final gradient = LinearGradient(
    colors: [AppColors.beginColor, AppColors.endColor],
  );

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return gradient.createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        );
      },
      child: Text("FlutterFit", style: AppTextStyle.titleStyle),
    );
  }
}
