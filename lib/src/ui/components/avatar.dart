import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;
  final Color? color;
  final double? padding;
  final double radius;
  const Avatar(
      {Key? key,
      required this.image,
      this.color,
      this.padding = 0,
      required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding!),
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: CircleAvatar(
            backgroundColor: color,
            radius: radius,
            backgroundImage: AssetImage(image)));
  }
}
