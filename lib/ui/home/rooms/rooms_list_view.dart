import 'package:flutter/material.dart';

import 'room_item.dart';

class RoomsListView extends StatelessWidget {
  const RoomsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 310,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          RoomItem(
            name: 'Kitchen',
            image: 'assets/images/kitchen.png',
            connectedDevices: 6,
            temperature: 25,
            humidity: 24,
          ),
          RoomItem(
            name: 'Living Room',
            image: 'assets/images/living-room.png',
            connectedDevices: 8,
            temperature: 22,
            humidity: 24,
          ),
          RoomItem(
            name: 'Lids Room',
            image: 'assets/images/kids-room.png',
            connectedDevices: 5,
            temperature: 22,
            humidity: 23,
          ),
        ],
      ),
    );
  }
}
