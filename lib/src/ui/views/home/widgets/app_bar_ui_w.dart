import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_paypal_redesign/src/core/constants/app_assets.dart';
import 'package:ui_paypal_redesign/src/core/constants/app_colors.dart';
import 'package:ui_paypal_redesign/src/ui/components/avatar.dart';

class AppBarUiW extends StatelessWidget {
  const AppBarUiW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Avatar(
            radius: 17,
            image: AppAssets.userPerfil,
            color: AppColors.grey,
            padding: 3),
        SvgPicture.asset(
          AppAssets.notifications,
          height: 25,
        )
      ],
    );
  }
}
