import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RoomBubbleShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.5507304, size.height * 0.6569871);
    path0.cubicTo(
        size.width * 0.5507304,
        size.height * 0.6296697,
        size.width * 0.5739565,
        size.height * 0.6069902,
        size.width * 0.6038765,
        size.height * 0.5988189);
    path0.cubicTo(
        size.width * 0.7466574,
        size.height * 0.5598265,
        size.width * 0.8502470,
        size.height * 0.4436508,
        size.width * 0.8502470,
        size.height * 0.3063970);
    path0.cubicTo(
      size.width * 0.8502470,
      size.height * 0.1371788,
      size.width * 0.6927896,
      0,
      size.width * 0.4985565,
      0,
    );
    path0.cubicTo(
        size.width * 0.3043226,
        0,
        size.width * 0.1468652,
        size.height * 0.1371788,
        size.width * 0.1468652,
        size.height * 0.3063970);
    path0.cubicTo(
        size.width * 0.1468652,
        size.height * 0.4409856,
        size.width * 0.2464713,
        size.height * 0.5553068,
        size.width * 0.3849635,
        size.height * 0.5964606);
    path0.cubicTo(
        size.width * 0.4147652,
        size.height * 0.6053159,
        size.width * 0.4376870,
        size.height * 0.6282417,
        size.width * 0.4376870,
        size.height * 0.6556735);

    path0.cubicTo(
        size.width * 0.4376870,
        size.height * 0.6868485,
        size.width * 0.4086783,
        size.height * 0.7121212,
        size.width * 0.3728948,
        size.height * 0.7121212);
    path0.lineTo(size.width * 0.1681217, size.height * 0.7121212);

    path0.cubicTo(
        size.width * 0.07687452,
        size.height * 0.7121212,
        size.width * 0.002904209,
        size.height * 0.7765682,
        size.width * 0.002904209,
        size.height * 0.8560606);
    path0.cubicTo(
        size.width * 0.002904209,
        size.height * 0.9355530,
        size.width * 0.07687461,
        size.height,
        size.width * 0.1681217,
        size.height);
    path0.lineTo(size.width * 0.8289913, size.height);
    path0.cubicTo(
        size.width * 0.9202348,
        size.height,
        size.width * 0.9942087,
        size.height * 0.9355530,
        size.width * 0.9942087,
        size.height * 0.8560606);
    path0.cubicTo(
        size.width * 0.9942087,
        size.height * 0.7765682,
        size.width * 0.9202348,
        size.height * 0.7121212,
        size.width * 0.8289913,
        size.height * 0.7121212);
    path0.lineTo(size.width * 0.6140148, size.height * 0.7121212);
    path0.cubicTo(
        size.width * 0.5790635,
        size.height * 0.7121212,
        size.width * 0.5507304,
        size.height * 0.6874371,
        size.width * 0.5507304,
        size.height * 0.6569871);

    path0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.black.withOpacity(0.2);
    canvas.drawPath(path0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
