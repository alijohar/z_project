import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BorderPainter extends CustomPainter {
  final Path path;
  final Color borderColor;
  final double borderWidth;

  BorderPainter({required this.path, this.borderColor = Colors.yellow, this.borderWidth = 3.0});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
