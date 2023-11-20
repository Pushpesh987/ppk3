// voice_button_dialog.dart
import 'package:flutter/material.dart';
import 'voice_page.dart';

class VoiceButtonDialog extends StatelessWidget {
  const VoiceButtonDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xFFEDEDED),
        ),
        padding: const EdgeInsets.all(16.0),
        width: 300.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // First rectangle box
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xFF411B52),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.mic,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Make a Call',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            // Second rectangle box
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromARGB(255, 209, 105, 105),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(labelText: 'Enter Phone Number'),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle make a call button tap
                      makeVoiceCall(context);
                    },
                    icon: const Icon(Icons.phone),
                    label: const Text('Make a Call'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void makeVoiceCall(BuildContext context) {
    // Mock making a voice call

    // Close the dialog and navigate to the homepage
    Navigator.pop(context);
    // Replace the below line with your navigation logic to the homepage
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => VoicePage()));
  }
}
