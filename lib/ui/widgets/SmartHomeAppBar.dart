import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmartHomeAppBar extends StatelessWidget {
  final String title;
  final bool? isShutdownButtonVisible;

  const SmartHomeAppBar({
    required this.title,
    this.isShutdownButtonVisible,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.centerLeft,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              title,
              style: GoogleFonts.urbanist(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          if (isShutdownButtonVisible == true)
            Positioned(
              right: 0,
              child: Container(
                clipBehavior: Clip.none,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.power_settings_new,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
