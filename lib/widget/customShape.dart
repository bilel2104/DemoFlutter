import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  /// corner side
  final double corner = 8.0;

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path()
      ..moveTo(97.08, 0.0)
      ..lineTo(17.0, 0.0)
      ..cubicTo(7.61, 0.0, 0.0, 7.61, 0.0, 17.0)
      ..cubicTo(0.0, 26.39, 7.61, 34.0, 17.0, 34.0)
      ..lineTo(112.83, 34.0)
      ..cubicTo(118.42, 34.0, 122.95, 29.47, 122.95, 23.88)
      ..cubicTo(122.95, 21.33, 121.98, 18.87, 120.25, 17.0)
      ..lineTo(109.55, 5.45)
      ..cubicTo(106.33, 1.97, 101.81, 0.0, 97.08, 0.0);

    //Paint paint_0_fill = Paint()..style=PaintingStyle.fill; paint_0_fill.color = Color(0xffee6a61).withOpacity(1.0); canvas.drawPath(path_0,paint_0_fill);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffee6a61).withOpacity(1.0);
    canvas.drawPath(path, paint_0_fill);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
