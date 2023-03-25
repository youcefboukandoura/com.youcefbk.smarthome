import 'package:flutter/material.dart';
import 'package:smarthome/ui/widgets/tooltip/tooltip_shape.dart';

class Tooltip extends StatelessWidget {
  const Tooltip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(48, 33),
      painter: TooltipShape(),
    );
  }
}
