import 'package:flutter/material.dart';

import 'mood_item.dart';


class MoodListWidget extends StatefulWidget {
  const MoodListWidget({Key? key}) : super(key: key);

  @override
  State<MoodListWidget> createState() => _MoodListWidgetState();
}

class _MoodListWidgetState extends State<MoodListWidget> {
  final List<String> _list = ['Cool', 'Dry', 'Heat', 'Warm'];
  var _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _list
            .map((element) => MoodItem(
                  title: element,
                  isSelected: _list.indexOf(element) == _selectedItemIndex,
                  onClickItem: () {
                    setState(() {
                      _selectedItemIndex = _list.indexOf(element);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
