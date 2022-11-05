import 'package:flutter/material.dart';
import 'package:ui_paypal_redesign/src/ui/views/home/widgets/button_add_w.dart';
import 'package:ui_paypal_redesign/src/ui/views/home/widgets/contacts_w.dart';

class SliverAppBarW extends StatelessWidget {
  const SliverAppBarW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: 100,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: Colors.transparent,
          height: 80,
          child: Row(children: const [
            ButtonAddW(),
            SizedBox(
              width: 10,
            ),
            Expanded(child: ContactsW()),
          ]),
        ),
      ),
    );
  }
}
