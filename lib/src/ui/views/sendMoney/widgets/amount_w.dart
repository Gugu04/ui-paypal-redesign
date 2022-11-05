import 'package:flutter/material.dart';

class AmountW extends StatelessWidget {
  final double textSize;
  const AmountW({Key? key, required this.textSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('\$',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontSize: textSize, fontWeight: FontWeight.bold)),
        Text('10.00',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontSize: textSize, fontWeight: FontWeight.bold)),
        const SizedBox(
          width: 10,
        ),
        Text('USD',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontSize: textSize * 0.38)),
      ],
    );
  }
}
