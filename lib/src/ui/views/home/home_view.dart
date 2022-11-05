import 'package:flutter/material.dart';
import 'package:ui_paypal_redesign/src/core/constants/app_assets.dart';
import 'package:ui_paypal_redesign/src/core/constants/app_colors.dart';
import 'package:ui_paypal_redesign/src/ui/views/accountOptions/account_options_view.dart';
import 'package:ui_paypal_redesign/src/ui/views/home/widgets/app_bar_ui_w.dart';
import 'package:ui_paypal_redesign/src/ui/views/home/widgets/bottom_navigation_bar_w.dart';
import 'package:ui_paypal_redesign/src/ui/views/home/widgets/button_ui_w.dart';
import 'package:ui_paypal_redesign/src/ui/views/home/widgets/credit_card_w.dart';
import 'package:ui_paypal_redesign/src/ui/views/home/widgets/sliver_app_bar_w.dart';
import 'package:ui_paypal_redesign/src/ui/views/home/widgets/transactions_w.dart';
import 'package:ui_paypal_redesign/src/ui/views/sendMoney/send_money_view.dart';
import 'package:ui_paypal_redesign/src/ui/views/successfull/successfull_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late int indexStack = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                height: MediaQuery.of(context).size.height * 0.88,
                decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const AppBarUiW(),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Hello, Gugu \u{1F609}',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'These are today\'s news',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CreditCardW(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: ButtonUiW(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.4,
                            color: AppColors.grey3,
                            padding: 10,
                            icon: AppAssets.send,
                            iconColor: AppColors.black2,
                            label: 'Send',
                            labelColor: AppColors.black2,
                          ),
                          onTap: () => showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              isScrollControlled: true,
                              builder: (context) {
                                return StatefulBuilder(builder:
                                    (BuildContext context, StateSetter state) {
                                  void screenNumber(int index) {
                                    indexStack = index;
                                    state(() {});
                                  }

                                  return DraggableScrollableSheet(
                                      expand: false,
                                      initialChildSize: 0.90,
                                      maxChildSize: 0.90,
                                      minChildSize: 0.75,
                                      builder: ((context, scrollController) {
                                        return Container(
                                          padding: const EdgeInsets.all(0),
                                          decoration: const BoxDecoration(
                                            color: AppColors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(30),
                                                topRight: Radius.circular(30)),
                                          ),
                                          child: IndexedStack(
                                            index: indexStack,
                                            children: [
                                              AccountOptionsView(
                                                  screenNumber: () =>
                                                      screenNumber(1)),
                                              SendMoneyView(
                                                  returnPreviousView: () =>
                                                      screenNumber(0),
                                                  screenNumber: () =>
                                                      screenNumber(2)),
                                              SuccessfullView(
                                                  screenNumber: () =>
                                                      screenNumber(0))
                                            ],
                                          ),
                                        );
                                      }));
                                });
                              }),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ButtonUiW(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.4,
                          color: AppColors.grey3,
                          padding: 10,
                          icon: AppAssets.request,
                          iconColor: AppColors.black2,
                          label: 'Request',
                          labelColor: AppColors.black2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: NestedScrollView(
                          headerSliverBuilder: (context, innerBoxIsScrolled) {
                            return [const SliverAppBarW()];
                          },
                          body: const TransactionsW()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarW());
  }
}
