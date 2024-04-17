import 'dart:developer';
import 'dart:math' as m;

import 'package:flutter/material.dart';

class RunMapPainter extends CustomPainter {
  final List<String> positionNames;
  final List<String> midPositionNames;
  final Offset? tapPoint;
  final int? selectedPosition;
  final Color selectedPositionColor;
  final Color groundColor;

  RunMapPainter(
    this.positionNames,
    this.midPositionNames,{
    required this.tapPoint,
    required this.selectedPosition,
    this.selectedPositionColor = Colors.grey,
    this.groundColor = const Color.fromRGBO(83, 145, 101, 1),
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;
    final Offset center = Offset(size.width / 2, size.height / 2);
    final Paint circlePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    // Draw the circle
    canvas.drawCircle(center, radius, circlePaint);

    final double sliceAngle = 2 * m.pi / positionNames.length;
    final Paint paint = Paint()..style = PaintingStyle.fill;

    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 10,
    );

    for (int i = 0; i < positionNames.length; i++) {
      final Path path = Path();
      path.moveTo(center.dx, center.dy);
      final double startAngle = sliceAngle * i;
      final double endAngle = sliceAngle * (i + 1);
      path.lineTo(
        center.dx + radius * m.cos(startAngle),
        center.dy + radius * m.sin(startAngle),
      );
      path.arcTo(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sliceAngle,
        false,
      );
      path.close();

      // Inner Circle
      path.arcTo(
        Rect.fromCircle(center: center, radius: radius / 2),
        startAngle,
        sliceAngle,
        false,
      );
      path.close();

      // Set color based on selection
      if (selectedPosition != null && i == selectedPosition) {
        paint.color = selectedPositionColor;
      } else {
        paint.color = groundColor;
      }

      canvas.drawPath(path, paint);

      // Inner Border
      final Paint strokePaint = Paint()
        ..color = Colors.white
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1;
      canvas.drawPath(path, strokePaint);

      final double midAngle = (startAngle + endAngle) / 2;
      final double textCenterX = center.dx + radius * 0.8 * m.cos(midAngle);
      final double textCenterY = center.dy + radius * 0.8 * m.sin(midAngle);

      final textSpan = TextSpan(
        text: positionNames[i],
        style: textStyle,
      );
      final textPainter = TextPainter(
          text: textSpan,
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center);
      textPainter.layout();

      final textOffset = Offset(
        textCenterX - textPainter.width / 2,
        textCenterY - textPainter.height / 2,
      );

      textPainter.paint(canvas, textOffset);
      log("$textOffset");
    }

    for (var i = 0; i < midPositionNames.length; i++) {
      final Path path = Path();
      path.moveTo(center.dx, center.dy);
      final double startAngle = sliceAngle * i;
      final double endAngle = sliceAngle * (i+1);

      final double midAngle = (startAngle + endAngle) / 2;
      final double midTextCenterX = center.dx + radius / 2 * 0.8 * m.cos(midAngle);
      final double midTextCenterY = center.dy + radius / 2 * 0.8 * m.sin(midAngle);

      final midTextSpan = TextSpan(
        text: midPositionNames[i],
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: Colors.white
        )
      );      
      final midTextPainter = TextPainter(
        text: midTextSpan,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center
      );
      midTextPainter.layout();

      final midTextOffset = Offset(
        midTextCenterX - midTextPainter.width / 2, 
        midTextCenterY - midTextPainter.height / 2
      );
      midTextPainter.paint(canvas, midTextOffset);
      log("$midTextOffset");
    }

    // Draw lines from center to tap point
    if (tapPoint != null) {
      final Paint linePaint = Paint()
        ..color = Colors.red
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2;
      canvas.drawLine(center, tapPoint!, linePaint);

      // Draw dot at the end of the line
      final Paint dotPaint = Paint()
        ..color = Colors.red
        ..style = PaintingStyle.fill;
      canvas.drawCircle(tapPoint!, 3.0, dotPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}