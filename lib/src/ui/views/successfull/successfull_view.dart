import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_paypal_redesign/src/core/constants/constants.dart';
import 'package:ui_paypal_redesign/src/ui/views/home/widgets/button_ui_w.dart';

class SuccessfullView extends StatelessWidget {
  final VoidCallback screenNumber;

  const SuccessfullView({
    Key? key,
    required this.screenNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppAssets.successfully,
                  color: AppColors.green2,
                  height: 70,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Payment send',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'You’ve successfully sent \$10.00 USD to Roman isidor',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: AppColors.grey9),
                ),
              ],
            ),
          ),
          InkWell(
              child: ButtonUiW(
                height: 65,
                width: MediaQuery.of(context).size.width * 0.85,
                boderColor: AppColors.grey8,
                boderwidth: 2,
                padding: 20,
                label: 'Done',
                labelColor: AppColors.blue2,
              ),
              onTap: () {
                Navigator.pop(context);
                screenNumber();
              }),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
