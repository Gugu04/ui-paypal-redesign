import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_paypal_redesign/src/core/constants/app_colors.dart';

class ButtonUiW extends StatelessWidget {
  final String? icon;
  final Color? iconColor;
  final double? iconHeight;
  final double height;
  final double width;
  final String label;
  final Color? labelColor;
  final double? padding;
  final Color? color;
  final Color? boderColor;
  final double? boderwidth;

  const ButtonUiW(
      {Key? key,
      this.icon,
      this.iconColor,
      this.iconHeight,
      required this.height,
      required this.width,
      required this.label,
      this.labelColor,
      this.padding = 0,
      this.color = AppColors.white,
      this.boderColor,
      this.boderwidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          border: boderColor != null && boderwidth != null
              ? Border.all(color: boderColor!, width: boderwidth!)
              : null),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child:
                  SvgPicture.asset(icon!, color: iconColor, height: iconHeight),
            )
          ],
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: labelColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
