import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarthome/ui/room/widget/room_bubble_shape.dart';
import 'package:smarthome/ui/room/widget/text_bubble_widget.dart';

class RoomBubbleWidget extends StatelessWidget {
  final String icon;

  const RoomBubbleWidget({required this.icon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            left: -40,
            bottom: 0,
            child: Transform.rotate(
              angle: -math.pi / 45,
              child: const TextBubbleWidget(
                text: 'Dinning Room',
              ),
            ),
          ),
          Positioned(
            left: 95,
            bottom: 0,
            child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/chevron-left.png',
                  color: Colors.white,
                )),
          ),
          buildCentralBubble(),
          Positioned(
            right: 95,
            bottom: 0,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/chevron-right.png',
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Transform.rotate(
              angle:  math.pi / 45,
              child: const TextBubbleWidget(
                text: 'Kitchen',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildCentralBubble() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          CustomPaint(
            size: const Size(114, 132),
            //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RoomBubbleShape(),
          ),
          Positioned.fill(
              bottom: 62,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(icon),
              )),
          Positioned(
            bottom: 8,
            child: SizedBox(
              width: 114,
              child: Text(
                'Bedroom',
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.urbanist(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
