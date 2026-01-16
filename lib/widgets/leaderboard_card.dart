import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:calculadora_imc/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class LeaderboardCard extends StatelessWidget {
  const LeaderboardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h270,
      width: AppSizes.w424,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.s16),
        ),
        color: AppColors.backgroundCard,
        elevation: AppSizes.s10,
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.s32),
          child: Column(
            children: [
              Text("Tabela de Classificação", style: AppTextStyle.titleCards),
              SizedBox(height: AppSizes.s24),
              Row(children: []),
            ],
          ),
        ),
      ),
    );
  }
}
