import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_paypal_redesign/api/data/data.dart';
import 'package:ui_paypal_redesign/src/core/constants/app_colors.dart';

class BottomNavigationBarW extends StatelessWidget {
  const BottomNavigationBarW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: menu
                .map((item) => Column(
                      children: [
                        SvgPicture.asset(
                          item.icon,
                          color: item.tag == 'home'
                              ? AppColors.blue2
                              : AppColors.grey2,
                          height: item.height,
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          margin: const EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                              color:
                                  item.tag == 'home' ? AppColors.blue2 : null,
                              shape: BoxShape.circle),
                        )
                      ],
                    ))
                .toList()),
      ),
    );
  }
}
