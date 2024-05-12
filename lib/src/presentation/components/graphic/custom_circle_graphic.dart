import 'dart:math';

import 'package:flutter/material.dart';

class CustomCircleGraph extends CustomPainter with _GraphBmiHelper {
  //
  final double bmi;
  final BuildContext context;

  CustomCircleGraph({
    required this.bmi,
    required this.context,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Circle
    final Offset center = Offset(size.width / 2, size.height / 2);
    final double radius = size.width * 2 / 4;

    final Paint circlePaint = Paint()
      ..color = Theme.of(context).colorScheme.secondary
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15;

    canvas.drawCircle(
      center,
      radius,
      circlePaint,
    );

    // Ark
    double startAngle = pi / -2;

    late double sweepAngle;
    late Color color;

    (sweepAngle, color) = numberToGraph(bmi: bmi); // Value comes from outside

    final Paint arcPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 15;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      arcPaint,
    );

    // Text
    final textPainter = TextPainter(
      text: TextSpan(
        text: "$bmi",
        style: TextStyle(
          fontSize: size.height * .2,
          fontWeight: FontWeight.w700,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(maxWidth: size.width);

    final Offset centerText = Offset(
      size.width / 3.3,
      size.height / 2.8,
    );

    textPainter.paint(
      canvas,
      centerText,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

mixin _GraphBmiHelper {
  (double, Color) numberToGraph({required double bmi}) {
    return switch (bmi) {
      < 18.5 => (2.5 * pi / 4, Colors.orange),
      >= 18.5 && <= 24.9 => (3.5 * pi / 4, Colors.blue),
      >= 25 && <= 29.9 => (4.5 * pi / 4, Colors.green),
      >= 30 && <= 39.9 => (5.5 * pi / 4, Colors.redAccent),
      > 39.9 => (6.5 * pi / 4, Colors.red),
      _ => (8 * pi / 4, Colors.grey),
    };
  }
}
