import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_paypal_redesign/src/core/constants/app_assets.dart';
import 'package:ui_paypal_redesign/src/core/constants/app_colors.dart';

class CreditCardW extends StatelessWidget {
  const CreditCardW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: AppColors.blue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                AppAssets.options,
                color: AppColors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppAssets.moneySymbol,
                    color: AppColors.grey2,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Text(
                    'Paypal balance',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(color: AppColors.grey2),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                '\$290.00 USD',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 4.8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  AppAssets.hideCode,
                  color: AppColors.white,
                  height: 3,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  '6753',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: AppColors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
