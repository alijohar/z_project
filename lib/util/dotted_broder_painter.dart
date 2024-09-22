import 'package:flutter/material.dart';

class DottedBorderPainter extends CustomPainter {
  final double borderWidth;
  final Color borderColor;

  DottedBorderPainter({this.borderWidth = 2.0, this.borderColor = Colors.grey});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke;

    final dashWidth = 3.0;
    final dashSpace = 4.0;
    double startX = 0.0;

    final path = Path();

    // Top Border
    while (startX < size.width) {
      path.moveTo(startX, 0);
      path.lineTo(startX + dashWidth, 0);
      startX += dashWidth + dashSpace;
    }

    // Right Border
    startX = 0.0;
    while (startX < size.height) {
      path.moveTo(size.width, startX);
      path.lineTo(size.width, startX + dashWidth);
      startX += dashWidth + dashSpace;
    }

    // Bottom Border
    startX = 0.0;
    while (startX < size.width) {
      path.moveTo(size.width - startX, size.height);
      path.lineTo(size.width - (startX + dashWidth), size.height);
      startX += dashWidth + dashSpace;
    }

    // Left Border
    startX = 0.0;
    while (startX < size.height) {
      path.moveTo(0, size.height - startX);
      path.lineTo(0, size.height - (startX + dashWidth));
      startX += dashWidth + dashSpace;
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
