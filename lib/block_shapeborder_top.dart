import 'package:flutter/material.dart';

class BlockShapeBorderTop extends ShapeBorder {
  double turning_width = 7;
  double turning_height = 9;
  double turning_width_long = 15;
  double turning_start_position = 20;

  final double borderWidth;
  final Color borderColor;
  final double borderRadius;

  BlockShapeBorderTop({
    this.borderWidth = 2.0,
    this.borderColor = Colors.black,
    this.borderRadius = 4,
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
    final halfBorderRadius = borderRadius / 2;
    double width = rect.right - rect.left;
    double height = rect.bottom - rect.top;

    // 移动到起点
    path.moveTo(rect.left + borderRadius, rect.top);

    //上凹
    path.lineTo(rect.left + turning_start_position, rect.top);
    path.lineTo(rect.left + turning_start_position + turning_width, rect.top + turning_height);
    path.lineTo(rect.left + turning_start_position + turning_width_long, rect.top + turning_height);
    path.lineTo(rect.left + turning_start_position + turning_width_long + turning_width, rect.top + turning_height);
    path.lineTo(rect.left + turning_start_position + turning_width_long + turning_width + turning_width, rect.top);

    //右上角
    path.lineTo(rect.right - borderRadius, rect.top);
    path.arcToPoint(
      Offset(rect.right, rect.top + borderRadius),
      radius: Radius.circular(borderRadius),
      clockwise: true,
    );

    //右下角
    path.lineTo(rect.right, rect.bottom - borderRadius);
    path.arcToPoint(
      Offset(rect.right - borderRadius, rect.bottom),
      radius: Radius.circular(borderRadius),
      clockwise: true,
    );

    //下凸
    // path.lineTo(rect.left + turning_start_position + turning_width_long + turning_width + turning_width, rect.bottom);
    // path.lineTo(rect.left + turning_start_position + turning_width_long + turning_width, rect.bottom + turning_height);
    // path.lineTo(rect.left + turning_start_position + turning_width, rect.bottom + turning_height);
    // path.lineTo(rect.left + turning_start_position, rect.bottom);

    //左下角
    path.lineTo(rect.left + borderRadius, rect.bottom);
    path.arcToPoint(
      Offset(rect.left, rect.bottom - borderRadius),
      radius: Radius.circular(borderRadius),
      clockwise: true,
    );

    //左上角
    path.lineTo(rect.left, rect.top + borderRadius);
    path.arcToPoint(
      Offset(rect.left + borderRadius, rect.top),
      radius: Radius.circular(borderRadius),
      clockwise: true,
    );
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
    return BlockShapeBorderTop(
      borderWidth: borderWidth * t,
      borderColor: borderColor,
      borderRadius: borderRadius * t,
    );
  }
}
