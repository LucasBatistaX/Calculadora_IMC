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
          SizedBox(
            height: AppSizes.s20,
            width: AppSizes.w110,
            child: Link(
              uri: Uri.parse('https://www.linkedin.com/in/lucasbatista-apk/'),
              target: LinkTarget.blank,
              builder: (BuildContext ctx, FollowLink? openLink) {
                return TextButton(
                  onPressed: openLink,
                  child: Text(
                    "Lucas Batista",
                    style: TextStyle(
                      color: AppColors.beginColor,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.beginColor,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationThickness: AppSizes.s2,
                    ),
                  ),
                );
              },
            ),
          ),

          Text("utilizando", style: TextStyle(color: AppColors.textColor)),
          Text(" Flutter", style: TextStyle(color: AppColors.endColor)),
          Text(".", style: TextStyle(color: AppColors.textColor)),
        ],
      ),
    );
  }
}



// Link(
//                 uri: Uri.parse(
//                     'https://pub.dev/documentation/url_launcher/latest/link/link-library.html'),
//                 target: LinkTarget.blank,
//                 builder: (BuildContext ctx, FollowLink? openLink) {
//                   return TextButton.icon(
//                     onPressed: openLink,
//                     label: const Text('Link Widget documentation'),
//                     icon: const Icon(Icons.read_more),
//                   );
//                 },
//               ),


          // TextSpan(
          //   text: " Lucas Batista",
          //   style: TextStyle(color: AppColors.beginColor),
          // ),


    //       Text.rich(
    //   TextSpan(
    //     children: [
    //       TextSpan(
    //         text: "Desenvolvido por",
    //         style: TextStyle(color: AppColors.textColor),
    //       ),
    //       TextSpan(
    //         text: " Lucas Batista",
    //         style: TextStyle(color: AppColors.beginColor),
    //       ),
    //       TextSpan(
    //         text: " utilizando",
    //         style: TextStyle(color: AppColors.textColor),
    //       ),
    //       TextSpan(
    //         text: " Flutter",
    //         style: TextStyle(color: AppColors.endColor),
    //       ),
    //       TextSpan(
    //         text: ".",
    //         style: TextStyle(color: AppColors.textColor),
    //       ),
    //     ],
    //   ),
    // );