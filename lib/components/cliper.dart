import 'package:flutter/material.dart';

class BottomInwardCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Start from top-left
    path.lineTo(0, size.height);
    path.lineTo(0, size.height - 50);

    // Create inward bottom curve
    path.quadraticBezierTo(
      size.width * 0.5, size.height - 130,   // Control point (deep inside)
      size.width, size.height - 50,       // End point
    );

    // Line to top-right
    path.lineTo(size.width, 0);

    // Close the path
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
