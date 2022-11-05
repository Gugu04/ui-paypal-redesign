import 'package:flutter/material.dart';
import 'package:ui_paypal_redesign/api/data/data.dart';
import 'package:ui_paypal_redesign/src/core/constants/app_colors.dart';
import 'package:ui_paypal_redesign/src/ui/views/home/widgets/transaction_w.dart';

class TransactionsW extends StatelessWidget {
  const TransactionsW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transactions",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: AppColors.grey2),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: transactions.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
                  child: Divider(
                    color: AppColors.grey4,
                    height: 3,
                  ),
                );
              },
              itemBuilder: (BuildContext context, int index) {
                Transactions transaction = transactions[index];
                return TransactionW(transaction: transaction);
              },
            ),
          ),
        ],
      ),
    );
  }
}
