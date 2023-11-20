// voice_page.dart
import 'package:flutter/material.dart';
import '../../../app_bar.dart';
import 'voice_second_container.dart';
import 'voice_third_container.dart'; // Import the third container file

class VoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDCC9E4),
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  width: 410.0,
                  height: 52.0,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xFFF3F2F4),
                            radius: 25.0,
                            child: Icon(
                              Icons.call,
                              color: Color(0xFF331640),
                              size: 23.0,
                            ),
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            '7986525131',
                            style: TextStyle(
                              color: Color(0xFF331640),
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xFFF3F2F4),
                            radius: 25.0,
                            child: Icon(
                              Icons.pause,
                              color: Color(0xFF331640),
                              size: 23.0,
                            ),
                          ),
                          SizedBox(width: 8.0),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 185, 6, 6),
                            radius: 25.0,
                            child: Icon(
                              Icons.call_end,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 23.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              // Second container (voice call)
              VoiceContainer(),
              const SizedBox(
                height: 16.0,
              ),
              // Third container
              VoiceThirdContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
