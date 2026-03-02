import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:calculadora_imc/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class SubCardRanking extends StatelessWidget {
  const SubCardRanking({
    super.key,
    required this.circleAvatarColor,
    required this.title,
    required this.subTitle,
  });

  final Color circleAvatarColor;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h90,
      width: AppSizes.w174,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(AppSizes.s16),
          side: BorderSide(
            color: AppColors.subtitleColor.withOpacity(AppSizes.s02),
          ),
        ),
        color: AppColors.backgroundCard,
        child: Padding(
          padding: const EdgeInsets.only(left: AppSizes.s12),
          child: Row(
            mainAxisAlignment: .start,
            crossAxisAlignment: .center,
            children: [
              CircleAvatar(
                radius: AppSizes.s6,
                backgroundColor: circleAvatarColor,
              ),
              SizedBox(width: AppSizes.s12),
              Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .start,
                //crossAxisAlignment: .start,
                children: [
                  Text(title, style: AppTextStyle.titleRankingcard),
                  Text(subTitle, style: AppTextStyle.subTitleRankingcard),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
