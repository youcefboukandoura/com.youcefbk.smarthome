import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MoodItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function onClickItem;

  const MoodItem({
    required this.title,
    required this.isSelected,
    required this.onClickItem,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 64,
          width: 64,
          child: IconButton(
            icon: SvgPicture.asset(
              _getAsset(),
              color: _getColor(),
            ),
            onPressed: () => {
              onClickItem.call()
            },
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
            ),
          ),
        ),
        Text(
          title,
          style: GoogleFonts.urbanist(
              fontSize: 14, fontWeight: FontWeight.w600, color: _getColor()),
        ),
      ],
    );
  }

  String _getAsset() {
    switch(title) {
      case 'Cool': {
        return 'assets/images/icon-cold.svg';
      }

      case 'Dry': {
        return 'assets/images/icon-dry.svg';
      }

      case 'Heat': {
        return 'assets/images/icon-heat.svg';
      }
      case 'Warm': {
        return 'assets/images/icon-warm.svg';
      }
      default: {
        return 'assets/images/icon-cold.svg';
      }

    }

  }

  Color _getColor() {
    if (isSelected) {
      return Colors.blue;
    } else {
      return const Color(0xFF5D627E);
    }
  }
}
