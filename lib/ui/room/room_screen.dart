import 'package:flutter/material.dart';
import 'package:smarthome/data/model/room.dart';
import 'package:smarthome/ui/airconditions/air_conditions_screen.dart';
import 'package:smarthome/ui/room/widget/room_bubble_widget.dart';
import 'package:smarthome/ui/widgets/SmartHomeAppBar.dart';

import 'shapes/device_title_shape.dart';

class RoomScreen extends StatefulWidget {
  static const routeName = '/room';

  RoomScreen({Key? key}) : super(key: key);

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  late Room _room;

  @override
  Widget build(BuildContext context) {
    _room = ModalRoute.of(context)?.settings.arguments as Room;

    return Scaffold(
      body: Stack(
        children: [
          _buildBackgroundImage(),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SafeArea(
              child: Stack(
                children: [
                  SmartHomeAppBar(
                    title: _room.name,
                    titleColor: Colors.white,
                    isShutdownButtonVisible: false,
                  ),
                  if(_room.name == 'Bedroom AR')
                  _buildPositionedAirConditioner(context),
                  if(_room.name == 'Bedroom AR')
                  _buildPositionLamp(),
                  _buildPositionedNavigationWidget(),
                  _buildPositionedFloatingActionButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Positioned _buildPositionedFloatingActionButton() {
    return Positioned(
      bottom: 122,
      right: 16,
      child: Container(
          width: 72,
          height: 72,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: SizedBox(
            height: 45,
            width: 45,
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: Colors.blue,
                ),
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ),
          )),
    );
  }

  Positioned _buildPositionedNavigationWidget() {
    return const Positioned.fill(
      bottom: 58,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: RoomBubbleWidget(icon: 'assets/images/icon-bedroom.png'),
      ),
    );
  }

  Positioned _buildPositionedAirConditioner(BuildContext context) {
    return Positioned(
      top: 163,
      left: 36,
      child: buildDeviceContainer(
          'Air Conditioner', 'assets/images/air-conditioning.png', () {
        Navigator.of(context).pushNamed(AirConditionsScreen.routeName);
      }),
    );
  }

  Positioned _buildPositionLamp() {
    return Positioned(
      top: 321,
      left: 160,
      child: buildDeviceContainer('Lamp', 'assets/images/lamp.png', null),
    );
  }

  SizedBox _buildBackgroundImage() {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          _room.image,
          fit: BoxFit.fitHeight,
        ));
  }

  Widget buildDeviceContainer(String title, String asset, Function? onClick) =>
      GestureDetector(
        onTap: () {
          onClick?.call();
        },
        child: Stack(clipBehavior: Clip.none, children: [
          Positioned(
            top: 20,
            left: 55,
            child: CustomPaint(
              size: Size(75, (75 * 0.5324675324675324).toDouble()),
              painter: DeviceTitleShape(title: title),
            ),
          ),
          Container(
            width: 110,
            height: 110,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0x4D171F46),
            ),
            child: Center(
              child: Container(
                width: 56,
                height: 56,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Image.asset(asset),
              ),
            ),
          ),
        ]),
      );
}
