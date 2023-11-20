// voice_container.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'voice_third_row.dart';// Import the file where you define FourthRow

class VoiceContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440.0, // Increased height to accommodate the fourth row
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color(0xFFFBF1FF),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFD3B3E2),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const SizedBox(width: 8.0),
                    const Icon(
                      Icons.call,
                      color: Color(0xFF331640),
                      size: 23.0,
                    ),
                    const SizedBox(width: 15.0),
                    const Text(
                      'Voice Call',
                      style: TextStyle(
                        color: Color(0xFF331640),
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(width: 130.0),
                    SvgPicture.asset(
                      'assets/minimize.svg',
                      height: 25.0,
                      width: 25.0,
                      color: const Color(0xFF331640),
                    ),
                    const SizedBox(width: 17.0),
                    SvgPicture.asset(
                      'assets/maximize.svg',
                      height: 25.0,
                      width: 25.0,
                      color: const Color(0xFF331640),
                    ),
                    const SizedBox(width: 8.0),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.alarm,
                      color: Colors.black,
                      size: 25.0,
                    ),
                    SizedBox(width: 15.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '20/11/2023',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '02:30 PM',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 50.0),
                    Row(
                      children: [
                        Icon(
                          Icons.construction,
                          color: Colors.black,
                          size: 25.0,
                        ),
                        SizedBox(width: 8.0),
                        SizedBox(
                          width: 100,
                          child: Text(
                            'sip_2023111006527_22501000',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    buildIconWithText(
                      'assets/timer.svg',
                      '00:00:00',
                    ),
                    SizedBox(width: 45.0),
                    buildIconWithText(
                      'assets/wifi.svg',
                      '0.00',
                    ),
                    SizedBox(width: 45.0),
                    buildIconWithText(
                      'assets/direction-right.svg',
                      'Out',
                    ),
                    SizedBox(width: 45.0),
                    buildIconWithText(
                      'assets/navigation.svg',
                      'Callflow',
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                // Third row with rectangular outline, icons, and text
                buildThirdRow(),
                // Fourth row with circular icons and a red button
                buildFourthRow(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIconWithText(String iconPath, String text) {
    return Column(
      children: [
        SvgPicture.asset(
          iconPath,
          height: 22.0,
          width: 22.0,
          color: Colors.black,
        ),
        SizedBox(height: 8.0),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget buildThirdRow() {
    return ThirdRow();
  }

  Widget buildFourthRow() {
    return FourthRow();
  }
}
