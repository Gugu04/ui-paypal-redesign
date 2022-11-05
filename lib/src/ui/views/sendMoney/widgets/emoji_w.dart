import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_paypal_redesign/src/core/constants/app_colors.dart';

class EmojiW extends StatelessWidget {
  final String? unicode;
  final String? icon;
  final Color? iconColor;
  final double? iconSize;
  final double? padding;
  const EmojiW(
      {Key? key,
      this.unicode,
      this.icon,
      this.iconSize = 10,
      this.iconColor = AppColors.grey7,
      this.padding = 8})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding!),
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: AppColors.grey3),
        child: unicode != null
            ? Text(
                unicode!,
                style: Theme.of(context).textTheme.headline6,
              )
            : SvgPicture.asset(
                icon!,
                height: iconSize,
                color: iconColor,
              ));
  }
}
