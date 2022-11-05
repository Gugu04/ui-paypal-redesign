import 'package:flutter/material.dart';
import 'package:ui_paypal_redesign/api/data/data.dart';
import 'package:ui_paypal_redesign/src/core/constants/app_colors.dart';
import 'package:ui_paypal_redesign/src/ui/components/avatar.dart';

class ContactsW extends StatelessWidget {
  const ContactsW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: [
          ...contacts
              .map((item) => Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Avatar(image: item.image, radius: 30),
                        Text(
                          item.name,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(
                                  color: AppColors.black.withOpacity(0.5)),
                        )
                      ],
                    ),
                  ))
              .toList(),
        ]);
  }
}
