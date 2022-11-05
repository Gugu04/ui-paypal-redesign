import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_paypal_redesign/api/data/data.dart';
import 'package:ui_paypal_redesign/src/core/constants/constants.dart';
import 'package:ui_paypal_redesign/src/ui/components/avatar.dart';
import 'package:ui_paypal_redesign/src/ui/views/home/widgets/button_ui_w.dart';
import 'package:ui_paypal_redesign/src/ui/views/home/widgets/contacts_w.dart';

class AccountOptionsView extends StatefulWidget {
  final VoidCallback screenNumber;
  const AccountOptionsView({
    Key? key,
    required this.screenNumber,
  }) : super(key: key);

  @override
  State<AccountOptionsView> createState() => _AccountOptionsViewState();
}

class _AccountOptionsViewState extends State<AccountOptionsView>
    with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: accountOptions.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Send",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(
                      AppAssets.close,
                      color: AppColors.black2,
                      height: 18,
                    ),
                  ),
                  onTap: () => Navigator.pop(context),
                )
              ],
            ),
          ),
          TabBar(
              controller: tabController,
              unselectedLabelColor: AppColors.black2,
              labelColor: AppColors.black2,
              tabs: accountOptions
                  .map((item) => Tab(
                        text: item,
                      ))
                  .toList()),
          Expanded(
            child: TabBarView(
                controller: tabController,
                children: accountOptions.map((item) {
                  return item == 'Send'
                      ? SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: TextFormField(
                                  controller: TextEditingController(text: ''),
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(13.0),
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(13.0),
                                      borderSide: const BorderSide(
                                          color: Colors.blueAccent),
                                    ),
                                    filled: true,
                                    contentPadding: const EdgeInsets.all(5),
                                    hintStyle: const TextStyle(fontSize: 15),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: SvgPicture.asset(AppAssets.search,
                                          color: AppColors.grey2, height: 10),
                                    ),
                                    fillColor: AppColors.grey6,
                                    hintText: "Name or email address",
                                  ),
                                ),
                              ),
                              const SizedBox(height: 100, child: ContactsW()),
                              ButtonUiW(
                                height: 56,
                                width: MediaQuery.of(context).size.width * 0.8,
                                icon: AppAssets.newContact,
                                iconHeight: 17,
                                iconColor: AppColors.black,
                                label: 'Add new contact',
                                boderColor: AppColors.grey,
                                boderwidth: 1.2,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              ...contacts2
                                  .map((item) => Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 20, right: 10),
                                        child: InkWell(
                                          child: Row(
                                            children: [
                                              Avatar(
                                                  image: item.image,
                                                  radius: 27),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    item.name,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                  ),
                                                  Text(
                                                    item.email!,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2!
                                                        .copyWith(
                                                            color: AppColors
                                                                .black2
                                                                .withOpacity(
                                                                    0.6)),
                                                  )
                                                ],
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment: Alignment.topRight,
                                                  child: SvgPicture.asset(
                                                      AppAssets.options),
                                                ),
                                              )
                                            ],
                                          ),
                                          onTap: () => widget.screenNumber(),
                                        ),
                                      ))
                                  .toList()
                            ],
                          ),
                        )
                      : Center(
                          child: Text(
                          item,
                          style: Theme.of(context).textTheme.headline5,
                        ));
                }).toList()),
          )
        ],
      ),
    );
  }
}
