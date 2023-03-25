import 'package:flutter/material.dart';
import 'package:smarthome/ui/airconditions/air_conditions_screen.dart';
import 'package:smarthome/ui/home/home_screen.dart';
import 'package:smarthome/ui/room/room_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        AirConditionsScreen.routeName: (context) => const AirConditionsScreen(),
        RoomScreen.routeName: (context) => RoomScreen(),
      },
    );
  }
}
