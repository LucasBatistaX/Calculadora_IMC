import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:calculadora_imc/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class ResultDialog extends StatelessWidget {
  const ResultDialog({super.key});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    double screenSizes = screen.width;
    double size = AppSizes.s500;

    if (screenSizes >= AppSizes.s530) {
      size = AppSizes.s500;
    } else {
      size = AppSizes.s350;
    }

    return Center(
      child: Container(
        height: AppSizes.s500,
        width: size,
        decoration: BoxDecoration(
          color: AppColors.backgroundCard,
          borderRadius: BorderRadius.circular(AppSizes.s18),
        ),
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Row(
              mainAxisAlignment: .end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: AppColors.textColor,
                  icon: Icon(Icons.close, size: AppSizes.s18),
                ),
              ],
            ),
            SizedBox(height: AppSizes.s20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.s24),
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    "Resultado do IMC.",
                    style: TextStyle(
                      color: AppColors.beginColor,
                      fontSize: AppSizes.s26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: AppSizes.s12),
                  Text(
                    "Seu indice de massa corporal é:",
                    style: AppTextStyle.subTitle,
                  ),
                  SizedBox(height: AppSizes.s28),
                  Center(
                    child: CircleAvatar(
                      backgroundColor: AppColors.overWeight,
                      radius: AppSizes.s70,
                      child: CircleAvatar(
                        radius: AppSizes.s60,
                        backgroundColor: AppColors.borderColorCard,
                        child: Text(
                          "27.4",
                          style: AppTextStyle.dialogNumberResult,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: AppSizes.s30),
                  Center(
                    child: Text(
                      "CLASSIFICAÇÃO:",
                      style: AppTextStyle.textInput,
                    ),
                  ),
                  SizedBox(height: AppSizes.s6),
                  Center(
                    child: Text(
                      "Sobrepeso",
                      style: AppTextStyle.dialogClassification,
                    ),
                  ),
                  SizedBox(height: AppSizes.s20),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSizes.s10),
                        gradient: LinearGradient(
                          colors: [AppColors.beginColor, AppColors.endColor],
                          begin: AlignmentGeometry.centerLeft,
                          end: AlignmentGeometry.centerRight,
                        ),
                      ),
                      height: AppSizes.s56,
                      child: Center(
                        child: Text(
                          "Entendido",
                          style: AppTextStyle.textButtonData,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
