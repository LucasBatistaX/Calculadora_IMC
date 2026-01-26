import 'package:calculadora_imc/utils/app_assets.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class LogoFlutterFit extends StatelessWidget {
  const LogoFlutterFit({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= AppSizes.breakPointTablet) {
          return Image.asset(AppAssets.logo2, height: AppSizes.h96);
        } else {
          return Image.asset(AppAssets.logo2, height: AppSizes.h80);
        }
      },
    );
  }
}
