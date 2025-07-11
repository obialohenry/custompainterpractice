import 'package:flutter/material.dart';

class Circle extends CustomPainter {
  final Color color;
  final double radius;
  final _paint = Paint();
  Circle(this.color, this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(180, 300), radius, _paint..color = color);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
