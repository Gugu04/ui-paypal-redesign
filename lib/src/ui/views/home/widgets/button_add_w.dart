import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_paypal_redesign/src/core/constants/constants.dart';
import 'package:ui_paypal_redesign/src/ui/painter/circle_paint.dart';

class ButtonAddW extends StatelessWidget {
  const ButtonAddW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CustomPaint(
                painter: CirclePaint(29, AppColors.grey4),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  AppAssets.add,
                  color: AppColors.blue2,
                  height: 25,
                ),
              ),
            )
          ],
        ),
        Text(
          'Add new',
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: AppColors.black.withOpacity(0.5)),
        )
      ],
    );
  }
}
