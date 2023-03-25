import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarthome/ui/home/device/small_device_card.dart';
import 'package:smarthome/ui/home/home_app_bar.dart';
import 'package:smarthome/ui/home/rooms/rooms_list_view.dart';

import 'device/long_device_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HomeAppBar(),
            RoomsListView(),
            _buildAddDevicesToolbar(),
            _buildDevices(),
          ],
        ),
      ),
    );
  }

  Column _buildDevices() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SmallDeviceCard(
                name: 'Homepod Mini',
                deviceImage: 'assets/images/homepod-mini.png',
                count: 2,
                isActive: true,
              ),
              SizedBox(
                width: 16,
              ),
              SmallDeviceCard(
                name: 'Smart Light',
                deviceImage: 'assets/images/smart-light.png',
                count: 3,
                isActive: false,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
          child: LongDeviceCard(
            name: 'Vacuum cleaner',
            deviceImage: 'assets/images/vacuum-cleaner.png',
            count: 1,
            isActive: false,
          ),
        ),
      ],
    );
  }

  Padding _buildAddDevicesToolbar() => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(
              'All Devices',
              textAlign: TextAlign.start,
              style: GoogleFonts.urbanist(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            SizedBox(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                label: const Text('Add'),
                icon: const Icon(Icons.add),
              ),
            )
          ],
        ),
      );
}
