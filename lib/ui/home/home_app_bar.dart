import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitle(),
                _buildSubtitle(),
              ],
            ),
            _buildNotificationButton(),
          ],
        ),
      );

  OutlinedButton _buildNotificationButton() => OutlinedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
        ),
        child: const Icon(
          Icons.notifications_outlined,
          color: Color(0xff171F46),
        ),
        onPressed: () {},
      );

  Text _buildSubtitle() => Text(
        'Welcome back again.',
        textAlign: TextAlign.start,
        style: GoogleFonts.urbanist(
          color: const Color(0xff171F46),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      );

  Text _buildTitle() => Text(
        'Hello Design Monks',
        style: GoogleFonts.urbanist(
          color: const Color(0xff171F46),
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.start,
      );
}
