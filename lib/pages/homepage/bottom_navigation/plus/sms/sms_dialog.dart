import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SmsDialog extends StatefulWidget {
  const SmsDialog({Key? key}) : super(key: key);

  @override
  _SmsDialogState createState() => _SmsDialogState();
}

class _SmsDialogState extends State<SmsDialog> {
  TextEditingController toNumberController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  String resultMessage = ''; // Add a variable to store the result message

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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xFFFBF1FF),
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
                  const SizedBox(height: 8.0),
                  Text(
                    resultMessage,
                    style: TextStyle(
                      color: resultMessage.contains('successfully')
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> sendSms(BuildContext context) async {
    String accountSid = ' ';
    String authToken = ' ';
    String twilioNumber = ' ';

    String toNumber = toNumberController.text;
    String message = messageController.text;

    final response = await http.post(
      Uri.parse(
          'https://api.twilio.com/2010-04-01/Accounts/$accountSid/Messages.json'),
      headers: {
        'Authorization':
            'Basic ' + base64Encode(utf8.encode('$accountSid:$authToken')),
      },
      body: {
        'To': toNumber,
        'From': twilioNumber,
        'Body': message,
      },
    );

    if (response.statusCode == 201) {
      print('SMS sent successfully');
      // Update the result message
      setState(() {
        resultMessage = 'SMS sent successfully';
      });
      // Show the success dialog
      // _showSuccessDialog(context);
      Navigator.pop(context); // Close the SMS dialog
    } else {
      print('Error sending SMS: ${response.reasonPhrase}');
      // Update the result message
      setState(() {
        resultMessage = 'Error sending SMS';
      });
      // Show an error dialog
      // _showErrorDialog(context);
    }
  }

  // void _showSuccessDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return const SuccessDialog();
  //     },
  //   );
  // }
}
