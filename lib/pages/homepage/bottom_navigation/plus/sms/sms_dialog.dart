// pages/homepage/bottom_navigation/plus/sms/sms_dialog.dart

// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../../home_page.dart';

class SmsDialog extends StatefulWidget {
  const SmsDialog({super.key});

  @override
  _SmsDialogState createState() => _SmsDialogState();
}

class _SmsDialogState extends State<SmsDialog> {
  TextEditingController toNumberController = TextEditingController();
  TextEditingController messageController = TextEditingController();

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
                        Icons.sms,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Send SMS',
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
                  TextField(
                    controller: toNumberController,
                    decoration: const InputDecoration(labelText: 'To Number'),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: messageController,
                    decoration: const InputDecoration(
                      labelText: 'Please select a or enter a message',
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle send button tap
                      sendSms(context);
                    },
                    icon: const Icon(Icons.send),
                    label: const Text('Send'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sendSms(BuildContext context) {
    // Mock sending SMS

    // Close the dialog and navigate to the homepage
    Navigator.pop(context);
    // Replace the below line with your navigation logic to the homepage
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }
}
