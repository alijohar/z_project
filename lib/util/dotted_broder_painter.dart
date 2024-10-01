import 'dart:ui';

import 'package:flutter/material.dart';

class DottedBorderPainter extends CustomPainter {
  final double borderWidth;
  final Color borderColor;
  final double cornerRadius;

  DottedBorderPainter({
    this.borderWidth = 2.0,
    this.borderColor = const Color(0xFF19192d),
    this.cornerRadius = 8.0, // Add cornerRadius
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke;

    final dashWidth = 5.0;
    final dashSpace = 3.0;

    final path = Path();

    // Define a rounded rectangle path
    path.addRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        Radius.circular(cornerRadius),
      ),
    );

    // Create a dashed path
    final dashPath = _createDashedPath(path, dashWidth, dashSpace);

    // Draw the dashed path
    canvas.drawPath(dashPath, paint);
  }

  // Helper method to create a dashed path
  Path _createDashedPath(Path source, double dashWidth, double dashSpace) {
    final Path dashedPath = Path();
    double distance = 0.0;

    for (PathMetric pathMetric in source.computeMetrics()) {
      while (distance < pathMetric.length) {
        final double nextDistance = distance + dashWidth;
        final Path extractedPath = pathMetric.extractPath(distance, nextDistance);
        dashedPath.addPath(extractedPath, Offset.zero);

        distance = nextDistance + dashSpace;
      }
      distance = 0.0; // Reset distance for next PathMetric
    }

    return dashedPath;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
