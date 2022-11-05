import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_paypal_redesign/api/data/data.dart';
import 'package:ui_paypal_redesign/src/core/constants/constants.dart';
import 'package:ui_paypal_redesign/src/ui/painter/numbers_paint.dart';
import 'package:ui_paypal_redesign/src/ui/views/sendMoney/widgets/amount_w.dart';
import 'package:ui_paypal_redesign/src/ui/views/sendMoney/widgets/emoji_w.dart';
import 'package:ui_paypal_redesign/src/ui/views/sendMoney/widgets/keyboard_numbers_w.dart';

class SendMoneyView extends StatelessWidget {
  final VoidCallback screenNumber;
  final VoidCallback returnPreviousView;

  const SendMoneyView(
      {Key? key, required this.screenNumber, required this.returnPreviousView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              InkWell(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
                  child: SvgPicture.asset(
                    AppAssets.leftArrow,
                    height: 20,
                    color: AppColors.black,
                  ),
                ),
                onTap: () => returnPreviousView(),
              ),
              const SizedBox(
                width: 40,
              ),
              Text(
                "Send to Roman",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  var size = Size(constraints.maxWidth, constraints.maxHeight);
                  var textSize = size.height * 0.2;
                  return Column(
                    children: [
                      AmountW(textSize: textSize),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: TextEditingController(text: ''),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13.0),
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13.0),
                            borderSide:
                                const BorderSide(color: Colors.blueAccent),
                          ),
                          filled: true,
                          contentPadding: const EdgeInsets.all(5),
                          hintStyle: const TextStyle(fontSize: 15),
                          fillColor: AppColors.grey6,
                          hintText: "Add a message",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...emojis.map((item) => EmojiW(
                                  unicode: item,
                                )),
                            const EmojiW(
                              icon: AppAssets.add,
                              iconSize: 16,
                              padding: 15,
                            )
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            )),
        Expanded(
          flex: 3,
          child: SizedBox(
            width: double.infinity,
            child: CustomPaint(
              painter: NumbersPainter(),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  var size = Size(constraints.maxWidth, constraints.maxHeight);
                  var textSize = (size.height * 0.18) * 0.5;
                  return KeyboardNumbersW(
                    size: size,
                    textSize: textSize,
                    screenNumber: screenNumber,
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
