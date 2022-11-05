import 'dart:math';

import 'package:flutter/material.dart';

class CirclePaint extends CustomPainter {
  final double radius;
  final Color color;
  CirclePaint(this.radius, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final Paint paint = Paint()..color = color;
    double filledCircleRadius = 2;
    int numberOfDots = 20;

    final double radiantStep = 2 * pi / numberOfDots;
    for (int i = 0; i < numberOfDots; i++) {
      canvas.drawCircle(
        Offset(centerX + sin(i * radiantStep) * radius,
            centerY + cos(i * radiantStep) * radius),
        filledCircleRadius,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
