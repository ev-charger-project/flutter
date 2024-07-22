import 'dart:math' as math;
import 'package:flutter/material.dart';

class DotsCircularProgressPainter extends CustomPainter {
  final double progress;
  final int numberOfDots;
  final Color color;

  DotsCircularProgressPainter(
      {required this.progress,
      this.numberOfDots = 8,
      this.color = Colors.green});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    var center = Offset(size.width / 2, size.height / 2);
    var radius = math.min(size.width, size.height) / 2;

    for (int i = 0; i < numberOfDots; i++) {
      var dotProgress = (progress - (i / numberOfDots)) % 1;
      var scale = (0.5 - (dotProgress - 0.5).abs()) * 2;
      paint.color = color.withOpacity(scale);

      var angle = (i / numberOfDots) * math.pi * 2;
      var dotCenter = Offset(center.dx + (radius - 10) * math.cos(angle),
          center.dy + (radius - 10) * math.sin(angle));
      canvas.drawCircle(dotCenter, 5, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
