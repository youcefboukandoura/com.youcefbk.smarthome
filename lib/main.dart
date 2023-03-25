import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarthome/ui/airconditions/air_conditions_screen.dart';
import 'package:smarthome/ui/home/home_screen.dart';
import 'package:smarthome/ui/room/room_screen.dart';
import 'package:smarthome/ui/theme/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      theme: ThemeData(
        fontFamily: GoogleFonts.urbanist().fontFamily,
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        textTheme:  TextTheme(
          titleMedium: GoogleFonts.urbanist(
            color: colorDarkBlue,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      home: const HomeScreen(),
      routes: {
        AirConditionsScreen.routeName: (context) => const AirConditionsScreen(),
        RoomScreen.routeName: (context) => RoomScreen(),
      },
    );
  }
}
