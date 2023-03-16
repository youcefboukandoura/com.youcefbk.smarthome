import 'package:flutter/material.dart';
import 'package:smarthome/ui/home/rooms/room_details_card.dart';

class RoomItem extends StatelessWidget {
  final String name;
  final String image;
  final int connectedDevices;
  final int temperature;
  final int humidity;

  const RoomItem(
      {Key? key,
      required this.name,
      required this.image,
      required this.connectedDevices,
      required this.temperature,
      required this.humidity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      width: 270,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            _buildRoomImage(),
            Positioned(
              right: 12,
              left: 12,
              bottom: 16,
              child: RoomDetailsCard(
                name: name,
                connectedDevices: connectedDevices,
                temperature: temperature,
                humidity: humidity,
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox _buildRoomImage() => SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Image(
          fit: BoxFit.fill,
          image: AssetImage(image),
        ),
      );
}
