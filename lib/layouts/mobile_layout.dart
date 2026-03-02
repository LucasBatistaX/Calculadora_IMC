import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:calculadora_imc/widgets/data_card.dart';
import 'package:calculadora_imc/widgets/flutter_fit.dart';
import 'package:calculadora_imc/widgets/footer.dart';
import 'package:calculadora_imc/widgets/logo_flutter_fit.dart';
import 'package:calculadora_imc/widgets/ranking_card.dart';
import 'package:calculadora_imc/widgets/subtitle.dart';
import 'package:flutter/material.dart';

class LayoutMobile extends StatelessWidget {
  const LayoutMobile({super.key});

  // Layout para telas menores de menores que 390px;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: .center,
            children: [
              SizedBox(height: AppSizes.s60),
              LogoFlutterFit(),
              SizedBox(height: AppSizes.s16),
              FlutterFit(),
              SizedBox(height: AppSizes.s16),
              Subtitle(),
              SizedBox(height: AppSizes.s48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.s16),
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    SizedBox(width: double.infinity, child: DataCard()),
                    SizedBox(height: AppSizes.s32),
                    SizedBox(width: double.infinity, child: RankingCard()),
                  ],
                ),
              ),
              SizedBox(height: AppSizes.s60),
              TextFooter(),
            ],
          ),
        ],
      ),
    );
  }
}
