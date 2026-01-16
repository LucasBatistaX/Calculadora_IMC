import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:calculadora_imc/utils/app_text_style.dart';
import 'package:calculadora_imc/widgets/sub_card_ranking.dart';
import 'package:flutter/material.dart';

class RankingCard extends StatelessWidget {
  const RankingCard({super.key});

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
          padding: const EdgeInsets.all(AppSizes.s24),
          child: Column(
            children: [
              Text("Tabela de Classificação", style: AppTextStyle.titleCards),
              SizedBox(height: AppSizes.s24),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: AppSizes.sg2,
                crossAxisSpacing: AppSizes.s4,
                mainAxisSpacing: AppSizes.s4,
                childAspectRatio: AppSizes.sg25,
                children: [
                  SubCardRanking(
                    circleAvatarColor: AppColors.lowWeight,
                    title: "Baixo peso",
                    subTitle: "IMC: < 18.5",
                  ),
                  SubCardRanking(
                    circleAvatarColor: AppColors.normalWeight,
                    title: "Peso normal",
                    subTitle: "IMC: 18.5 - 24.9",
                  ),
                  SubCardRanking(
                    circleAvatarColor: AppColors.overWeight,
                    title: "Sobrepeso",
                    subTitle: "IMC: 25 - 29.9",
                  ),
                  SubCardRanking(
                    circleAvatarColor: AppColors.heightWeight,
                    title: "Obesidade",
                    subTitle: "IMC: ≥ 30",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
