import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:calculadora_imc/utils/app_text_style.dart';
import 'package:calculadora_imc/widgets/input_data.dart';
import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  const DataCard({super.key});

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
              Text("Informe seus dados", style: AppTextStyle.titleCards),
              SizedBox(height: AppSizes.s24),
              Row(
                children: [
                  InputData(
                    label: "Peso (kg)",
                    icon: Icons.balance_outlined,
                    angleIcon: AppSizes.s0,
                  ),
                  SizedBox(width: AppSizes.s24),
                  InputData(
                    label: "Altura (cm)",
                    icon: Icons.straighten_outlined,
                    angleIcon: AppSizes.s26,
                  ),
                ],
              ),
              SizedBox(height: AppSizes.s24),
              GestureDetector(
                onTap: () {
                  debugPrint("Clicado!");
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
                      "Calcular IMC",
                      style: AppTextStyle.textButtonData,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
