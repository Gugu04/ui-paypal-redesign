import 'package:flutter/material.dart';
import 'package:ui_paypal_redesign/src/core/constants/constants.dart';

class NumbersPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = AppColors.blue3
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;

    final Paint paint2 = Paint()
      ..color = AppColors.blue3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 6;

    final path2 = Path();

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.12);
    path.quadraticBezierTo(0, 0, size.width * 0.12, 0);

    path.lineTo(size.width * 0.43, 0);

    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.06, size.width * 0.56, 0);
    // path.conicTo(size.width * 0.5, size.height * 0.1, size.width * 0.6, 0, 1);

    path.lineTo(size.width * 0.86, 0);

    path.quadraticBezierTo(size.width, 0, size.width, size.height * 0.12);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);

    path2.moveTo(size.width * 0.465, 0);
    path2.lineTo(size.width * 0.525, 0);

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(NumbersPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(NumbersPainter oldDelegate) => false;
}
