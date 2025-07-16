import 'package:flutter/material.dart';

class Triangle extends CustomPainter {
  final Color color;
  final _paint = Paint();
  Triangle({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
  
    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 2, -size.height / 2);
    path.close();
    canvas.drawPath(
      path,
      _paint
        ..style = PaintingStyle.fill
        ..color = color,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
