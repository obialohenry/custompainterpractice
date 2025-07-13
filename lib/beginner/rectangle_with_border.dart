import 'package:flutter/material.dart';

class RectangleWithBorder extends CustomPainter {
  final Color color;
  final double borderRadius;
  final _paint = Paint();
  RectangleWithBorder({required this.color, required this.borderRadius});

  @override
  void paint(Canvas canvas, Size size) {
    RRect rrect = RRect.fromRectAndRadius(
  Rect.fromLTWH(100, size.height/2, size.width/2, 100),
  Radius.circular(borderRadius)
);
    canvas.drawRRect(rrect,_paint..style =PaintingStyle.fill..color = color);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
