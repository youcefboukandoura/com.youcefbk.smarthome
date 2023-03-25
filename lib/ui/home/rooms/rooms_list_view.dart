import 'package:flutter/material.dart';
import 'package:smarthome/ui/room/room_screen.dart';

import '../../../data/model/room.dart';
import 'room_item.dart';

class RoomsListView extends StatelessWidget {
  RoomsListView({Key? key}) : super(key: key);
  final List<Room> _rooms = [
    Room(
      name: 'Bedroom AR',
      image: 'assets/images/bedroom.png',
      connectedDevices: 2,
      temperature: 25,
      humidity: 24,
    ),
    Room(
      name: 'Kitchen',
      image: 'assets/images/kitchen.png',
      connectedDevices: 2,
      temperature: 25,
      humidity: 24,
    ),
    Room(
      name: 'Living Room',
      image: 'assets/images/living-room.png',
      connectedDevices: 8,
      temperature: 22,
      humidity: 24,
    ),
    Room(
      name: 'Kids Room',
      image: 'assets/images/kids-room.png',
      connectedDevices: 5,
      temperature: 22,
      humidity: 23,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 310,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: _rooms
            .map(
              (item) => RoomItem(
                  name: item.name,
                  image: item.image,
                  connectedDevices: item.connectedDevices,
                  temperature: item.temperature,
                  humidity: item.humidity,
                  onClick: () {
                    Navigator.of(context)
                        .pushNamed(RoomScreen.routeName, arguments: item);
                  }),
            )
            .toList(),
      ),
    );
  }
}
