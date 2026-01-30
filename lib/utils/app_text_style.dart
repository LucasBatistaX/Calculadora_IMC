import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  // Style title
  static const TextStyle titleStyle = TextStyle(
    color: AppColors.textColor,
    fontWeight: FontWeight.bold,
    fontSize: AppSizes.s60,
    shadows: [
      BoxShadow(color: Colors.white, spreadRadius: 5, offset: Offset(1, 0)),
    ],
  );

  //Style Subtitle
  static const TextStyle subTitle = TextStyle(
    color: AppColors.subtitleColor,
    fontSize: AppSizes.s20,
  );
  //TitleCards
  static const TextStyle titleCards = TextStyle(
    color: AppColors.textColor,
    fontSize: AppSizes.s24,
  );
  //TextInput
  static const TextStyle textInput = TextStyle(
    color: AppColors.textColor,
    fontSize: AppSizes.s16,
  );
  //TextButtonData
  static const TextStyle textButtonData = TextStyle(
    color: AppColors.textColor,
    fontSize: AppSizes.s16,
    fontWeight: FontWeight.w500,
  );
  //TitleRankingcard
  static const TextStyle titleRankingcard = TextStyle(
    color: AppColors.textColor,
    fontSize: AppSizes.s14,
    fontWeight: FontWeight.w300,
  );
  //subTitleRankingcard
  static const TextStyle subTitleRankingcard = TextStyle(
    color: AppColors.subtitleColor,
    fontSize: AppSizes.s14,
  );

  //StyleOfResultDialog

  static const TextStyle dialogClassification = TextStyle(
    color: AppColors.overWeight,
    fontSize: AppSizes.s20,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle dialogNumberResult = TextStyle(
    color: Colors.white,
    fontSize: AppSizes.s40,
    fontWeight: FontWeight.bold,
  );
}
