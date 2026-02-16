import 'package:calculadora_imc/providers/imc_provider.dart';
import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:calculadora_imc/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultDialog extends StatefulWidget {
  const ResultDialog({super.key});
  @override
  State<ResultDialog> createState() => _ResultDialogState();
}

class _ResultDialogState extends State<ResultDialog> {
  @override
  Widget build(BuildContext context) {
    final ImcProvider provider = Provider.of<ImcProvider>(context);

    var screen = MediaQuery.of(context).size;
    double screenSizes = screen.width;
    double size = AppSizes.s500;

    if (screenSizes >= AppSizes.s530) {
      size = AppSizes.s500;
    } else {
      size = AppSizes.s350;
    }

    return ListenableBuilder(
      listenable: provider,
      builder: (context, child) {
        Widget body = Container();

        if (provider.isLoading == true) {
          body = Center(
            child: CircularProgressIndicator(color: AppColors.endColor),
          );
        } else if (provider.error.isNotEmpty) {
          body = Center(child: Text(provider.error));
        } else if (provider.error.isEmpty) {
          body = Center(
            child: Container(
              height: AppSizes.s500,
              width: size,
              decoration: BoxDecoration(
                color: AppColors.backgroundCard,
                borderRadius: BorderRadius.circular(AppSizes.s18),
              ),
              child: Consumer<ImcProvider>(
                builder: (context, provider, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
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
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.s24,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                backgroundColor: AppColors.ringColor(
                                  provider.classificacao!.color,
                                ),
                                radius: AppSizes.s70,
                                child: CircleAvatar(
                                  radius: AppSizes.s60,
                                  backgroundColor: AppColors.borderColorCard,
                                  child: Text(
                                    provider.getImc().toStringAsFixed(2),
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
                                provider.classificacao!.message,
                                style: AppTextStyle.subTitle.copyWith(
                                  color: provider.classificacao!.color,
                                ),
                              ),
                            ),
                            SizedBox(height: AppSizes.s20),
                            Container(
                              width: double.infinity,
                              height: AppSizes.s56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  AppSizes.s10,
                                ),
                                gradient: LinearGradient(
                                  colors: [
                                    AppColors.beginColor,
                                    AppColors.endColor,
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "Entendido",
                                  style: AppTextStyle.textButtonData,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          );
        }
        return body;
      },
    );
  }
}
