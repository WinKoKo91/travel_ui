import 'package:flutter/material.dart';

class RectanglePainter extends CustomPainter {
  Color shapeColor;
  PaintingStyle style;

  RectanglePainter({required this.shapeColor, this.style = PaintingStyle.fill});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = shapeColor
      ..style = style
      ..strokeWidth = 3;

    Path path0 = Path();
    path0.moveTo(size.width * 1, size.height *1);
    path0.lineTo(size.width * 1, size.height * 1);
    path0.lineTo(size.width * 1, size.height * 0.08);
    path0.lineTo(size.width * 0.2, size.height * 0.08);
    path0.lineTo(size.width * 0.04, size.height *1);
    path0.close();

    canvas.drawPath(path0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
