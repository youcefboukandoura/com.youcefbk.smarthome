import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallDeviceCard extends StatefulWidget {
  final String name;
  final String deviceImage;
  final int count;
  final bool isActive;

  const SmallDeviceCard({
    Key? key,
    required this.name,
    required this.deviceImage,
    required this.count,
    required this.isActive,
  }) : super(key: key);

  @override
  State<SmallDeviceCard> createState() => _SmallDeviceCardState();
}

class _SmallDeviceCardState extends State<SmallDeviceCard> {
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
        height: 175,
        width: 162,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
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
              const SizedBox(
                height: 16,
              ),
              Text(
                widget.name,
                style: GoogleFonts.urbanist(
                  color: const Color(0xff171F46),
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Color getColor() {
    if (_isActive) {
      return Colors.green;
    } else {
      return Colors.yellow;
    }
  }
}
