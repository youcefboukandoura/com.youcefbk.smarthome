import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoomDetailsCard extends StatelessWidget {
  final String name;
  final int connectedDevices;
  final int temperature;
  final int humidity;

  const RoomDetailsCard(
      {Key? key,
      required this.name,
      required this.connectedDevices,
      required this.temperature,
      required this.humidity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 248,
      height: 142,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        clipBehavior: Clip.antiAlias,
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 18,
                right: 18,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.urbanist(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '$connectedDevices Devices connected',
                    style: GoogleFonts.urbanist(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4,
              ),
              child: Divider(thickness: 0.5, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildWeatherWidget(
                    iconData: Icons.thermostat_outlined,
                    title: 'Temperature',
                    value: '$temperature°C',
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  _buildWeatherWidget(
                    iconData: Icons.water_drop,
                    title: 'Humidity',
                    value: '$humidity%',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildWeatherWidget(
      {required IconData iconData,
      required String title,
      required String value}) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Icon(
            iconData,
            color: Colors.blue,
          ),
        ),
        const SizedBox(width: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.urbanist(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.start,
            ),
            Text(
              value,
              style: GoogleFonts.urbanist(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ],
    );
  }
}
