import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_assets.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:calculadora_imc/utils/app_text_style.dart';
import 'package:calculadora_imc/widgets/data_card.dart';
import 'package:calculadora_imc/widgets/flutter_fit.dart';
import 'package:calculadora_imc/widgets/leaderboard_card.dart';
import 'package:calculadora_imc/widgets/subtitle.dart';
import 'package:flutter/material.dart';

//Use View.of(context)

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Image.asset(AppAssets.logo2, height: AppSizes.h96),
            SizedBox(height: AppSizes.s16),
            FlutterFit(),
            SizedBox(height: AppSizes.s16),
            Subtitle(),
            SizedBox(height: AppSizes.s48),
            Row(
              mainAxisAlignment: .center,
              children: [
                DataCard(),
                SizedBox(width: AppSizes.s48),
                LeaderboardCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
