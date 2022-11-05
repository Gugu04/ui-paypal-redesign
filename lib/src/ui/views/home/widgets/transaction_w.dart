import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_paypal_redesign/api/data/data.dart';
import 'package:ui_paypal_redesign/src/core/constants/constants.dart';
import 'package:ui_paypal_redesign/src/ui/components/avatar.dart';

class TransactionW extends StatelessWidget {
  final Transactions transaction;
  const TransactionW({Key? key, required this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: 65,
            width: 65,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.grey5),
            child: Avatar(
              image: transaction.imagen,
              radius: 10,
              color: Colors.white,
            )),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              transaction.name,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  transaction.date,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: AppColors.black.withOpacity(0.5)),
                ),
                Container(
                  width: 6,
                  height: 6,
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  decoration: const BoxDecoration(
                    color: AppColors.green,
                    shape: BoxShape.circle,
                  ),
                ),
                Text(
                  transaction.categoryType,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: AppColors.black.withOpacity(0.5)),
                ),
              ],
            )
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                transaction.diminish ? AppAssets.less : AppAssets.add,
                color: transaction.diminish ? AppColors.black : AppColors.green,
                height: transaction.diminish ? 1.5 : 15,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '\$ ${transaction.amount}',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: transaction.diminish
                        ? AppColors.black
                        : AppColors.green),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
