import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarthome/ui/widgets/SmartHomeAppBar.dart';

import 'widget/mood_list_view.dart';

class AirConditionsScreen extends StatefulWidget {
  static const routeName = '/air-conditions';
  const AirConditionsScreen({Key? key}) : super(key: key);

  @override
  State<AirConditionsScreen> createState() => _AirConditionsScreenState();
}

class _AirConditionsScreenState extends State<AirConditionsScreen> {
  int _temperature = 32;
  int _defaultChoiceIndex = 0;
  double _currentSliderValue = 8;
  final List<String> _choices = [
    'Living Room',
    'Kitchen',
    'Bathroom',
    'Bedroom',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SmartHomeAppBar(
              title: 'Air Conditions',
              titleColor: Color(0xff171F46),
              isShutdownButtonVisible: true,
            ),
            _buildRoomsChips(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(44.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: RadialGradient(radius: 0.95, colors: [
                              Color(0x00FFFFFF),
                              Color(0xFF569AFF),
                            ]),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleCircularSlider(
                              64,
                              _temperature,
                              height: 200.0,
                              width: 200.0,
                              baseColor:
                                  const Color(0x000053ff).withOpacity(0.1),
                              selectionColor: Colors.blue,
                              handlerColor: Colors.white,
                              handlerOutterRadius: 12.0,
                              onSelectionChange: (value, v2, v3) {
                                setState(() {
                                  _temperature = v2;
                                });
                              },
                              sliderStrokeWidth: 12.0,
                              child: Padding(
                                padding: const EdgeInsets.all(42.0),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '  $_temperature°',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.urbanist(
                                          fontSize: 36,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      Text(
                                        'ROOM \n TEMPERATURE',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.urbanist(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF5D627E),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  _buildMoodSelectionCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Card _buildMoodSelectionCard() {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: const Color(0xffF8F8F8),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: 300,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildSelectMoodTitle('Select Mood'),
                const MoodListWidget(),
                Divider(color: const Color(0x246BFD).withOpacity(0.2)),
                const SizedBox(height: 16),
                _buildSelectMoodTitle('Add Timer'),
                const SizedBox(height: 40),
                SliderTheme(
                  data: SliderThemeData(
                      overlayShape: SliderComponentShape.noOverlay),
                  child: Slider(
                    value: _currentSliderValue,
                    max: 18,
                    activeColor: Colors.blue,
                    divisions: 18,
                    label: "${_currentSliderValue.round().toString()} hrs",
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '0',
                      style: GoogleFonts.urbanist(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff171F46)),
                    ),
                    Text(
                      '18',
                      style: GoogleFonts.urbanist(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff171F46)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  SizedBox _buildSelectMoodTitle(String text) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: GoogleFonts.urbanist(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: const Color(0xff171F46)),
      ),
    );
  }

  SizedBox _buildRoomsChips() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _choices.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ChoiceChip(
              avatar: null,
              label: Text(
                _choices[index],
                style: GoogleFonts.urbanist(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              selected: _defaultChoiceIndex == index,
              selectedColor: Colors.blue,
              onSelected: (bool selected) {
                setState(() {
                  _defaultChoiceIndex = selected ? index : 0;
                });
              },
              labelStyle: TextStyle(color: getColor(index)),
            ),
          );
        },
      ),
    );
  }

  Color getColor(int index) {
    if (index == _defaultChoiceIndex) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }
}
