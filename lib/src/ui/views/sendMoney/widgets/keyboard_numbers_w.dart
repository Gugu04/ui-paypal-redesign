import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_paypal_redesign/api/data/data.dart';
import 'package:ui_paypal_redesign/src/core/constants/constants.dart';
import 'package:ui_paypal_redesign/src/ui/views/home/widgets/button_ui_w.dart';

class KeyboardNumbersW extends StatelessWidget {
  final Size size;
  final double textSize;
  final VoidCallback screenNumber;

  const KeyboardNumbersW(
      {Key? key,
      required this.size,
      required this.textSize,
      required this.screenNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Wrap(
              spacing: 10,
              runSpacing: 5,
              direction: Axis.horizontal,
              children: [
                ...keyboardNumbers
                    .map((item) => Container(
                          height: size.height * 0.16,
                          width: size.width * 0.28,
                          alignment: Alignment.center,
                          child: Text(
                            item,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    fontSize: textSize, color: AppColors.white),
                          ),
                        ))
                    .toList(),
                Container(
                    height: size.height * 0.16,
                    width: size.width * 0.28,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      AppAssets.clear,
                      height: textSize * 0.9,
                    ))
              ]),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            child: ButtonUiW(
                color: AppColors.blue2,
                labelColor: AppColors.white,
                height: size.height * 0.165,
                width: size.width * 0.9,
                label: 'Confirm send'),
            onTap: () => screenNumber(),
          )
        ],
      ),
    );
  }
}
