import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeviceTitleShape extends CustomPainter {
  final String title;

  DeviceTitleShape({required this.title});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.01298701, size.height * 0.9756098);
    path_0.lineTo(size.width * 0.5211117, size.height * 0.9756098);
    path_0.cubicTo(
        size.width * 0.5610675,
        size.height * 0.9756098,
        size.width * 0.5987987,
        size.height * 0.9410683,
        size.width * 0.6234130,
        size.height * 0.8819610);
    final lastPointX = size.width * 0.9805195;
    final lastPointY = size.height * 0.02439024;
    path_0.lineTo(lastPointX, lastPointY);

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.02597403;
    paint0Stroke.color = Colors.white.withOpacity(1.0);
    paint0Stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(path_0, paint0Stroke);

    final textStyle = GoogleFonts.urbanist(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
    final textSpan = TextSpan(
      text: title,
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: double.infinity,
    );

    final offset = Offset(lastPointX - 10, lastPointY - 20);
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
