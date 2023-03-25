import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarthome/ui/theme/color.dart';

class LongDeviceCard extends StatefulWidget {
  final String name;
  final String deviceImage;
  final int count;
  final bool isActive;

  const LongDeviceCard({
    Key? key,
    required this.name,
    required this.deviceImage,
    required this.count,
    required this.isActive,
  }) : super(key: key);

  @override
  State<LongDeviceCard> createState() => _LongDeviceCardState();
}

class _LongDeviceCardState extends State<LongDeviceCard> {
  bool _isActive = false;

  @override
  void initState() {
    super.initState();
    _isActive = widget.isActive;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: const Color(0xffF8F8F8),
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 110,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Image.asset(widget.deviceImage),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: GoogleFonts.urbanist(
                      color: colorDarkBlue,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Chip(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    avatar: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: getColor(),
                      ),
                    ),
                    label: Text('${widget.count} Devices'),
                  ),
                ],
              ),
              const Spacer(),
              Switch(
                value: _isActive,
                onChanged: (bool value) {
                  setState(() {
                    _isActive = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color getColor() => _isActive ? Colors.green : Colors.yellow;
}
