import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:calculadora_imc/widgets/data_card.dart';
import 'package:calculadora_imc/widgets/flutter_fit.dart';
import 'package:calculadora_imc/widgets/footer.dart';
import 'package:calculadora_imc/widgets/logo_flutter_fit.dart';
import 'package:calculadora_imc/widgets/ranking_card.dart';
import 'package:calculadora_imc/widgets/subtitle.dart';
import 'package:flutter/material.dart';

class LayoutDesktop extends StatelessWidget {
  const LayoutDesktop({
    super.key,
  });

// Layout para telas maiores de 1024px

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: .center,
            mainAxisAlignment: .spaceBetween,
            children: [
              SizedBox(height: AppSizes.s60),
              LogoFlutterFit(),
              SizedBox(height: AppSizes.s16),
              FlutterFit(),
              SizedBox(height: AppSizes.s16),
              Subtitle(),
              SizedBox(height: AppSizes.s48),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.s16,
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    DataCard(),
                    SizedBox(width: AppSizes.s48),
                    RankingCard(),
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