import 'dart:math' as math;
import 'package:flutter/material.dart';

class DodecagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    // Center of the widget
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    // The radius of the imaginary circle
    final double radius = math.min(centerX, centerY);
    // Number of sides
    const int numberOfSides = 12;

    // Start drawing the path from the first vertex
    double angle = -math.pi / 2;
    const double angleIncrement = 2 * math.pi / numberOfSides;

    path.moveTo(centerX + radius * math.cos(angle), centerY + radius * math.sin(angle));
    for (int i = 1; i <= numberOfSides; i++) {
      angle += angleIncrement;
      path.lineTo(centerX + radius * math.cos(angle), centerY + radius * math.sin(angle));
    }
    path.close(); // Close the path to form the shape

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
