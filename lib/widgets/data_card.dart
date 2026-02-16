import 'package:calculadora_imc/providers/imc_provider.dart';
import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:calculadora_imc/utils/app_text_style.dart';
import 'package:calculadora_imc/widgets/button_calculator.dart';
import 'package:calculadora_imc/widgets/result_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataCard extends StatefulWidget {
  const DataCard({super.key});

  @override
  State<DataCard> createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
  late final TextEditingController pesoController;
  late final TextEditingController alturaController;
  late final ImcProvider imcProvider;

  late final GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    pesoController = TextEditingController();
    alturaController = TextEditingController();
    formKey = GlobalKey<FormState>();
    imcProvider = context.read<ImcProvider>();
  }

  bool isNumber(String data) {
    return parseNumber(data) != null;
  }

  double? parseNumber(String value) {
    return double.tryParse(value);
  }

  void submite() {
    if (formKey.currentState!.validate()) {
      imcProvider.calcular(
        pesoController: parseNumber(pesoController.text)!,
        alturaController: parseNumber(alturaController.text)!,
      );

      showDialog(
        context: context,
        builder: (context) {
          return ResultDialog();
        },
      );
    }
  }

  @override
  void dispose() {
    pesoController.dispose();
    alturaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= AppSizes.breakPointMobile) {
          return SizedBox(
            height: AppSizes.h280,
            width: AppSizes.w424,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.s16),
              ),
              color: AppColors.backgroundCard,
              elevation: AppSizes.s10,
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.s32),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "Informe seus dados",
                          style: AppTextStyle.titleCards,
                        ),
                      ),
                      SizedBox(height: AppSizes.s24),
                      Row(
                        children: [
                          //Peso
                          Expanded(
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Valor inválido";
                                } else if (!isNumber(value)) {
                                  return "Digite um número";
                                }
                                return null;
                              },
                              onChanged: (value) {
                                debugPrint("O Peso é ${pesoController.text}");
                              },
                              controller: pesoController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    AppSizes.s10,
                                  ),
                                ),
                                labelStyle: TextStyle(
                                  color: AppColors.subtitleColor,
                                ),
                                labelText: "Peso(kg) ex:80",
                                prefixIcon: Transform.rotate(
                                  angle: AppSizes.s0,
                                  child: Icon(
                                    Icons.balance_outlined,
                                    color: AppColors.endColor,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.subtitleColor,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    AppSizes.s10,
                                  ),
                                ),
                              ),
                              style: AppTextStyle.textInput,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(width: AppSizes.s24),
                          //Altura
                          Expanded(
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Valor inválido";
                                } else if (!isNumber(value)) {
                                  return "Digite um número";
                                }
                                return null;
                              },
                              onChanged: (value) {
                                debugPrint(
                                  "A Altura é ${alturaController.text}",
                                );
                              },
                              controller: alturaController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    AppSizes.s10,
                                  ),
                                ),
                                labelStyle: TextStyle(
                                  color: AppColors.subtitleColor,
                                ),
                                labelText: "Altura(cm) ex:171",
                                prefixIcon: Transform.rotate(
                                  angle: AppSizes.s26,
                                  child: Icon(
                                    Icons.straighten_outlined,
                                    color: AppColors.endColor,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.subtitleColor,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    AppSizes.s10,
                                  ),
                                ),
                              ),
                              style: AppTextStyle.textInput,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: AppSizes.s24),
                      ButtonCalculator(titulo: "Calcular", onPressed: submite),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else {
          return SizedBox(
            height: AppSizes.h364,
            width: AppSizes.w424,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.s16),
              ),
              color: AppColors.backgroundCard,
              elevation: AppSizes.s10,
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.s32),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "Informe seus dados",
                          style: AppTextStyle.titleCards,
                        ),
                      ),
                      SizedBox(height: AppSizes.s24),
                      //Peso
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Valor inválido";
                            } else if (!isNumber(value)) {
                              return "Digite um número";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            debugPrint("O Peso é ${alturaController.text}");
                          },
                          controller: pesoController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(AppSizes.s10),
                            ),
                            labelStyle: TextStyle(
                              color: AppColors.subtitleColor,
                            ),
                            labelText: "Peso(kg) ex:80",
                            prefixIcon: Transform.rotate(
                              angle: AppSizes.s0,
                              child: Icon(
                                Icons.balance_outlined,
                                color: AppColors.endColor,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.subtitleColor,
                              ),
                              borderRadius: BorderRadius.circular(AppSizes.s10),
                            ),
                          ),
                          style: AppTextStyle.textInput,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      SizedBox(width: AppSizes.s24),
                      //Altura
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Valor inválido";
                            } else if (!isNumber(value)) {
                              return "Digite um número";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            debugPrint("A altura é ${alturaController.text}");
                          },
                          controller: alturaController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(AppSizes.s10),
                            ),
                            labelStyle: TextStyle(
                              color: AppColors.subtitleColor,
                            ),
                            labelText: "Altura(cm) ex:171",
                            prefixIcon: Transform.rotate(
                              angle: AppSizes.s26,
                              child: Icon(
                                Icons.straighten_outlined,
                                color: AppColors.endColor,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.subtitleColor,
                              ),
                              borderRadius: BorderRadius.circular(AppSizes.s10),
                            ),
                          ),
                          style: AppTextStyle.textInput,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      SizedBox(height: AppSizes.s28),
                      ButtonCalculator(titulo: "Calcular", onPressed: submite),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
