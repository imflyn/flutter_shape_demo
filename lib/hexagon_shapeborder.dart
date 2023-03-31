import 'dart:math';

import 'package:flutter/material.dart';

class HexagonShapeBorder extends ShapeBorder {
  final double borderWidth;
  final Color borderColor;

  HexagonShapeBorder({
    this.borderWidth = 1,
    this.borderColor = Colors.black,
  });

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(borderWidth / 2);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return _getPath(rect.deflate(borderWidth), textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return _getPath(rect, textDirection);
  }

  Path _getPath(Rect rect, TextDirection? textDirection) {
    final path = Path();
    double width = rect.right - rect.left;
    double height = rect.bottom - rect.top;

    double turning_width = (height * tan(50)).abs();

    path.moveTo(rect.left, rect.top + height / 2);
    path.lineTo(rect.left + turning_width, rect.top);
    path.lineTo(rect.right - turning_width, rect.top);
    path.lineTo(rect.right, rect.top + height / 2);
    path.lineTo(rect.right - turning_width, rect.bottom);
    path.lineTo(rect.left + turning_width, rect.bottom);
    path.lineTo(rect.left, rect.top + height / 2);
    path.close();
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final path = getOuterPath(rect);
    final paint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round
      ..isAntiAlias = true
      ..strokeCap = StrokeCap.round
      ..strokeWidth = borderWidth;

    canvas.drawPath(path, paint);
  }

  @override
  ShapeBorder scale(double t) {
    return HexagonShapeBorder(
      borderWidth: borderWidth * t,
      borderColor: borderColor,
    );
  }
}
