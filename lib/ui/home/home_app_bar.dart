import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarthome/ui/theme/color.dart';

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
                _buildTitle(context),
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
          color: colorDarkBlue,
        ),
        onPressed: () {},
      );

  Text _buildSubtitle() => Text(
        'Welcome back again.',
        textAlign: TextAlign.start,
        style: GoogleFonts.urbanist(
          color: colorDarkBlue,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      );

  Text _buildTitle(BuildContext context) => Text(
        'Hello Design Monks',
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.start,
      );
}
