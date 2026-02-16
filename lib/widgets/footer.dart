import 'package:calculadora_imc/utils/app_colors.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class TextFooter extends StatelessWidget {
  const TextFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          Text(
            "Desenvolvido por",
            style: TextStyle(color: AppColors.textColor),
          ),
          Link(
            uri: Uri.parse('https://www.linkedin.com/in/lucasbatista-apk/'),
            target: LinkTarget.blank,
            builder: (BuildContext ctx, FollowLink? openLink) {
              return TextButton(
                onPressed: openLink,
                child: Text(
                  "Lucas Batista",
                  style: TextStyle(color: AppColors.beginColor),
                ),
              );
            },
          ),
          Text("utilizando", style: TextStyle(color: AppColors.textColor)),
          Text(" Flutter", style: TextStyle(color: AppColors.endColor)),
          Text(".", style: TextStyle(color: AppColors.textColor)),
        ],
      ),
    );
  }
}