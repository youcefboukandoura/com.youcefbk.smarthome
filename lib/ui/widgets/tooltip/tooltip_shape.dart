import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class TooltipShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.03138146, size.height * 0.03546364);
    path_0.cubicTo(0, size.height * 0.07092758, 0, size.height * 0.1280055, 0,
        size.height * 0.2421615);
    path_0.lineTo(0, size.height * 0.6054030);
    path_0.cubicTo(0, size.height * 0.7195606, 0, size.height * 0.7766364,
        size.width * 0.03138146, size.height * 0.8121000);
    path_0.cubicTo(
        size.width * 0.06276292,
        size.height * 0.8475636,
        size.width * 0.1132704,
        size.height * 0.8475636,
        size.width * 0.2142854,
        size.height * 0.8475636);
    path_0.lineTo(size.width * 0.2740896, size.height * 0.8475636);
    path_0.cubicTo(
        size.width * 0.3641938,
        size.height * 0.8475636,
        size.width * 0.4486313,
        size.height * 0.8972455,
        size.width * 0.5003021,
        size.height * 0.9806636);
    path_0.cubicTo(
        size.width * 0.5082875,
        size.height * 0.9935545,
        size.width * 0.5122792,
        size.height,
        size.width * 0.5178563,
        size.height);
    path_0.cubicTo(
        size.width * 0.5234354,
        size.height,
        size.width * 0.5274271,
        size.height * 0.9935545,
        size.width * 0.5354125,
        size.height * 0.9806636);
    path_0.cubicTo(
        size.width * 0.5870833,
        size.height * 0.8972455,
        size.width * 0.6715208,
        size.height * 0.8475636,
        size.width * 0.7616250,
        size.height * 0.8475636);
    path_0.lineTo(size.width * 0.7857146, size.height * 0.8475636);
    path_0.cubicTo(
        size.width * 0.8867292,
        size.height * 0.8475636,
        size.width * 0.9372375,
        size.height * 0.8475636,
        size.width * 0.9686187,
        size.height * 0.8121000);
    path_0.cubicTo(size.width, size.height * 0.7766364, size.width,
        size.height * 0.7195606, size.width, size.height * 0.6054030);
    path_0.lineTo(size.width, size.height * 0.2421615);
    path_0.cubicTo(
        size.width,
        size.height * 0.1280055,
        size.width,
        size.height * 0.07092758,
        size.width * 0.9686187,
        size.height * 0.03546364);
    path_0.cubicTo(size.width * 0.9372375, 0, size.width * 0.8867292, 0,
        size.width * 0.7857146, 0);
    path_0.lineTo(size.width * 0.2142854, 0);
    path_0.cubicTo(size.width * 0.1132704, 0, size.width * 0.06276292, 0,
        size.width * 0.03138146, size.height * 0.03546364);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
        Offset(size.width, size.height),
        Offset(size.width * -9.515813, size.height * 0.3282000),
        [const Color(0xff246BFD).withOpacity(1), const Color(0xff5089FF).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
