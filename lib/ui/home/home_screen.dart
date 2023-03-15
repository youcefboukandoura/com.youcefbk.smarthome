import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [_buildHomeAppBar()])),
    );
  }
}

_buildHomeAppBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hello Design Monks',

              style: TextStyle(
                  color: Color(0xff171F46),
                  fontSize: 20,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.start,
            ),
            Text(
              'Welcome back again.',
              textAlign: TextAlign.start,
            ),
          ],
        ),
        const Icon(Icons.add)
      ],
    ),
  );
}
