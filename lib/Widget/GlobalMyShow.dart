import 'package:flutter/material.dart';

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    double scallopRadius = 5.0; // Smaller scallop size for more compact design

    path.moveTo(0, 0);
    path.lineTo(size.width, 0);

    // Right side scallop
    for (double y = scallopRadius; y < size.height; y += scallopRadius * 2) {
      path.arcToPoint(
        Offset(size.width, y + scallopRadius),
        radius: Radius.circular(scallopRadius),
        clockwise: false,
      );
    }

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    // Left side scallop
    for (double y = size.height - scallopRadius;
        y > 0;
        y -= scallopRadius * 2) {
      path.arcToPoint(
        Offset(0, y - scallopRadius),
        radius: Radius.circular(scallopRadius),
        clockwise: false,
      );
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
