// voice_page.dart

import 'package:flutter/material.dart';
import '../../../app_bar.dart';
import 'voice_second_container.dart';
import 'voice_third_container.dart';

class VoicePage extends StatefulWidget {
  final String phoneNumber;

  const VoicePage({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  _VoicePageState createState() => _VoicePageState();
}

class _VoicePageState extends State<VoicePage> {
  bool callEnded = false;

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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xFFF3F2F4),
                            radius: 25.0,
                            child: Icon(
                              Icons.call,
                              color: const Color(0xFF331640),
                              size: 23.0,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            "+91 ${widget.phoneNumber}", // Add +91 before the 10-digit number
                            style: const TextStyle(
                              color: Color(0xFF331640),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: callEnded
                                ? Colors.grey // Disabled color when call is ended
                                : const Color(0xFFF3F2F4),
                            radius: 25.0,
                            child: Icon(
                              Icons.pause,
                              color: callEnded ? Colors.black : const Color(0xFF331640),
                              size: 23.0,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          CircleAvatar(
                            backgroundColor: callEnded
                                ? Colors.grey // Disabled color when call is ended
                                : Colors.red,
                            radius: 25.0,
                            child: IconButton(
                              icon: Icon(
                                Icons.call_end,
                                color: callEnded ? Colors.black : Color.fromARGB(255, 255, 255, 255),
                                size: 23.0,
                              ),
                              onPressed: callEnded
                                  ? null // Disable button when call is ended
                                  : () {
                                      // Handle the call end button tap
                                      setState(() {
                                        callEnded = true;
                                      });
                                      // Add any additional logic you need here
                                    },
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

              // Display the entered phone number
            ],
          ),
        ),
      ),
    );
  }
}
