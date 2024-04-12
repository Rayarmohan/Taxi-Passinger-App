import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  final double progress;
  final Color backgroundColor;
  final Color progressColor;
  final double strokeWidth;

  const CustomCircularProgressIndicator({
    Key? key,
    required this.progress,
    required this.backgroundColor,
    required this.progressColor,
    required this.strokeWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: CustomPaint(
        foregroundPainter: null,
        painter: CirclePainter(
          progress: progress,
          backgroundColor: backgroundColor,
          progressColor: progressColor,
          strokeWidth: strokeWidth,
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  final double progress;
  final Color backgroundColor;
  final Color progressColor;
  final double strokeWidth;

  CirclePainter({
    required this.progress,
    required this.backgroundColor,
    required this.progressColor,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    Paint progressPaint = Paint()
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    double center = size.width / 2;
    double radius = center - (strokeWidth / 2);

    canvas.drawCircle(Offset(center, center), radius, backgroundPaint);

    double sweepAngle = progress * 360;
    canvas.drawArc(
      Rect.fromCircle(center: Offset(center, center), radius: radius),
      -90 * 3.14 / 180, // startAngle is -90 degrees in radians
      sweepAngle * 3.14 / 180, // sweepAngle is in radians
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}