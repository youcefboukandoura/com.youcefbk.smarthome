import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarthome/ui/theme/color.dart';

class TextBubbleWidget extends StatelessWidget {
  final String text;

  const TextBubbleWidget({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorDarkBlue.withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(60)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.urbanist(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
